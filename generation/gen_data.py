from random import Random
from datetime import datetime, timedelta
from faker import Faker
from faker_vehicle import VehicleProvider

import json

env: dict
f_cars: Faker
f_users: Faker
f_schedule: Faker
f_diary: Faker


# Generate a faker with provided locale and seed
def get_faker(locale: str, seed: int | float):
    # Create faker instance
    f = Faker(locale)
    # Set instance seed
    f.seed_instance(seed)
    # Vehicle data provider
    f.add_provider(VehicleProvider)

    return f


# Load and init variables
def init_env(file: str):
    # Global scope variables
    global env, f_cars, f_users, f_schedule, f_diary

    with open(file) as f:
        env = json.load(f)

    locale = env['faker']['locale']

    r = Random(env['faker']['seed'])
    r_cars = Random(r.random())
    r_users = Random(r.random())
    r_schedule = Random(r.random())
    r_diary = Random(r.random())

    env['random'] = {
        'cars': r_cars,
        'users': r_users,
        'schedule': r_schedule,
        'diary': r_diary
    }

    f_cars = get_faker(locale, r_cars.random())
    f_users = get_faker(locale, r_users.random())
    f_schedule = get_faker(locale, r_schedule.random())
    f_diary = get_faker(locale, r_diary.random())


def gen_user(n: int):
    f = f_users
    r = env['random']['users']

    l_user = []

    for i in range(n):
        first_name = f.first_name()
        last_name = f.last_name()
        date_of_birth = f.date_of_birth(minimum_age=18, maximum_age=87)
        date_of_birth = date_of_birth.strftime('%Y-%m-%d')

        p = r.random()
        if p < 0.6:
            email = f.email()
            phone_prefix = gen_phone_prefix()
            phone_number = f.msisdn()
        elif p < 0.8:
            email = f.email()
            phone_prefix = None
            phone_number = None
        else:
            email = None
            phone_prefix = gen_phone_prefix()
            phone_number = f.msisdn()

        l_user.append({
            'id': i,
            'first_name': first_name,
            'last_name': last_name,
            'date_of_birth': date_of_birth,
            'email': email,
            'phone_prefix': phone_prefix,
            'phone_number': phone_number
        })

    return l_user


def gen_phone_prefix():
    while True:
        phone_prefix = f_cars.country_calling_code()[1:]

        if len(phone_prefix) < 4:
            break

    return phone_prefix


def gen_cars(n: int):
    f = f_cars
    r = env['random']['cars']

    # https://pypi.org/project/faker-vehicle/

    l_car = []

    for _ in range(n):
        v = f.vehicle_object()
        l_car.append({
            'plate': f.license_plate(),
            'brand': v['Make'],
            'model': v['Model'],
            'color': f.color_name(),
            'year': v['Year'],
            'notes': f.sentence(nb_words=10)
        })

    return l_car


def gen_schedule(cars: list[dict], users: list[dict]):
    f = f_schedule
    r: Random = env['random']['schedule']

    l_sched = []
    n_users = len(users)

    for car in cars:

        if r.random() < 0.3:
            continue

        car_plate = car['plate']
        user_id = users[r.randrange(0, n_users)]['id']

        # Initial date
        date_min = datetime.strptime('2010-01-01', '%Y-%m-%d')
        date_start_time: datetime = f.date_between(
            start_date=date_min,
            end_date=date_min + timedelta(days=365 * 14)
        )

        # End date
        date_end_time: datetime = f.date_between(
            start_date=date_start_time + timedelta(days=1),
            end_date=date_start_time + timedelta(days=22)
        )

        start_time: str = date_start_time.strftime('%Y-%m-%d')
        end_time: str = date_end_time.strftime('%Y-%m-%d')

        l_sched.append({
            'car_plate': car_plate,
            'user_id': user_id,
            'start_time': start_time,
            'end_time': end_time,
            'notes': f.sentence(nb_words=10)
        })

    return l_sched


def gen_diary(cars: list[dict]):
    f = f_diary
    r: Random = env['random']['diary']

    l = []

    for car in cars:
        used_dates = set()

        while r.random() < 0.4:
            diary = diary_entry(car['plate'])

            ddate = diary['ddate']
            if ddate in used_dates:
                continue

            used_dates.add(ddate)
            l.append(diary)

    return l


def diary_entry(plate: str) -> dict:
    f = f_diary
    r: Random = env['random']['diary']

    min_date = datetime.strptime('2020-01-01', '%Y-%m-%d')
    ddate: datetime = f.date_between(start_date=min_date, end_date=min_date + timedelta(days=365 * 3 + 240))
    km_travelled = r.random() * 500.
    gas_cost = km_travelled / 20. * (r.random() * 1.5 + 0.9)

    return {
        'plate': plate,
        'ddate': ddate.strftime('%Y-%m-%d'),
        'km_travelled': round(km_travelled, 2),
        'gas_cost': round(gas_cost, 2),
        'mechanical_wear': None,
        'notes': None
    }


def str_insert(columns: list[str], value: dict, table: str):
    return (
        f"INSERT INTO {table} "
        f"({', '.join(columns)}) "
        f"VALUES "
        f"({', '.join(map(encode_val, map(value.get, columns)))});"
    )


def encode_val(val):
    if val is None:
        return 'null'

    if isinstance(val, str):
        return f"'{val}'"

    return str(val)


def write_json(file: str, data):
    with open(file, 'w') as f:
        json.dump(data, f, indent=4)


def write_sql(file: str, table: str, instructions: list[str]):
    f = open(file, 'w')

    f.write(
        f"-->>> File generated by gen_data.py at {datetime.now()} <<<--\n"
        f"\n"
        f"-- Reset transaction\n"
        f"END;\n"
        f"BEGIN;\n"
        f"\n"
        f"-- Truncate table before inserting batch\n"
        f"TRUNCATE {table} CASCADE;\n"
        f"\n"
    )

    for instr in instructions:
        f.write(instr + '\n')

    f.write(
        "\n"
        "-- Commit transaction\n"
        "COMMIT;\n"
    )

    f.close()


init_env('env.json')

if __name__ == '__main__':
    # noinspection PyUnboundLocalVariable
    cars = gen_cars(env['entries']['n_cars'])
    users = gen_user(env['entries']['n_users'])
    schedule = gen_schedule(cars, users)
    diaries = gen_diary(cars)

    write_json('1_cars.json', cars)
    write_json('2_users.json', users)
    write_json('3_schedule.json', schedule)
    write_json('4_diary.json', diaries)

    write_sql('1_insert_cars.sql', 'CARS', [
        str_insert(env['columns']['cars'], car, 'CARS')
        for car in cars
    ])
    write_sql('2_insert_users.sql', 'USERS', [
        str_insert(env['columns']['users'], user, 'USERS')
        for user in users
    ])
    write_sql('3_insert_schedule.sql', 'SCHEDULE', [
        str_insert(env['columns']['schedule'], sched, 'SCHEDULE')
        for sched in schedule
    ])
    write_sql('4_insert_diary.sql', 'ONBOARD_DIARY', [
        str_insert(env['columns']['diary'], diary, 'ONBOARD_DIARY')
        for diary in diaries
    ])
