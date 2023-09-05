# Freed'em Car Renting

## Introduction

**University:** Sapienza University of Rome

**Bachelor:** Applied Computer Science and Artificial Intelligence

**Course:** Data Management and Analysis - Unit 2

**Year:** 2022-23, Second Semester

**Team Members:**

- Mautino Luca
- Mensitieri Vincenzo
- Scaccia Emanuele

This project is part of the exam of the second unit of Data Management and Analysis.
Given a setting, the goal is to create a database that satisfies the setting's requirement.

## Setting

The assigned theme is a CAR RENTAL SHOP, which rents cars to users.

A table must contain information about the cars, such as the plate.

A table must contain information about the cars' schedule,
such as user, tenant, day, schedule start and end time.

A table must contain information about the users,
such as the name or the telephone number.

A table must contain the information of the on-board digital car diary,
such as number of Km travelled, cost of gas (in euro)
or any mechanical wear (e.g. broken tyres, dented frame or melted engine)

Keep in mind:

- One or more cars may be associated to the same user
- A car cannot have any overlapping schedule, i.e. same day and overlapping start-end period

## Project Structure

The database of choice is **PostgreSQL 13.10**.

The db scripts are grouped by the following categories, each represented by a folder.

| Folder  | Description                                                          |
|:-------:|----------------------------------------------------------------------|
| **DDL** | Contains the scripts for the creation of the database and the tables |
| **DML** | Contains the scripts for the insertion of the data                   |
| **DQL** | Contains the scripts for the queries                                 |

### DDL

The acronym stands from **Data Definition Language**,
the folder contains the scripts for the creation of all database objects.

The scripts are further divided into sub-folders, each representing a database object:
**tables**, **functions**, **triggers**.

|     Tables     | Description                                                                         |
|:--------------:|-------------------------------------------------------------------------------------|
|   `cars.sql`   | Creates the `CARS` table, which contains information about cars                     |
|  `users.sql`   | Creates the `USERS` table, which contains information about users                   |
| `schedule.sql` | Creates the `SCHEDULE` table, which contains information about the renting schedule |

|          Functions           | Description                                                                          |
|:----------------------------:|--------------------------------------------------------------------------------------|
| `check_schedule_overlap.sql` | Function that checks if a renting interval overlaps with another interval (same car) |

|              Triggers              | Description                                                                                |
|:----------------------------------:|--------------------------------------------------------------------------------------------|
| `trig_schedule_overlap_insert.sql` | Trigger that checks if a renting interval overlaps with another interval, during inserting |
| `trig_schedule_overlap_update.sql` | Trigger that checks if a renting interval overlaps with another interval, during updating  |

> :information_source: `schedule_overlap` trigger
> 
> When updating a schedule, the old schedule doesn't have to be checked for overlaps,
> since it's being updated. This can be done via the `OLD` keyword, that references the old row.
> When inserting this keyword is null, instead of creating complex code to separate the two cases
> it was opted to keep it simple and create two triggers with almost identical features.

### DML

The acronym stands from **Data Manipulation Language**,
the folder contains the scripts for the insertion and update of the data.

All DML scripts are wrapped in a `BEGIN`-`COMMIT` block,
which executes all the statements in the script as a single transaction.
The transaction makes it so that if an error occurs during the execution of the script,
the database is restored to the state before the execution of the script,
i.e. all statements in the transaction are executed atomically.

The list of the scripts is the following:

1. **insert_cars:** Inserts data about cars in the `CARS` table;
2. **insert_users:** Inserts data about users in the `USERS` table;
3. **insert_schedule:** Inserts data about the renting schedule in the `SCHEDULE` table;