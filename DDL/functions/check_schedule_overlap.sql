CREATE OR REPLACE FUNCTION check_schedule_overlap(
	-- Record with SCHEDULE's row type
	r1 SCHEDULE,
	r2 SCHEDULE
) RETURNS BOOLEAN AS
$$
BEGIN

	-- Check if same car
	RETURN r1.CAR_PLATE LIKE r2.CAR_PLATE
		-- Check overlapping
		AND (r1.START_TIME, r1.END_TIME) OVERLAPS (r2.START_TIME, r2.END_TIME);

END;
$$ LANGUAGE plpgsql;