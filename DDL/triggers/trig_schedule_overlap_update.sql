CREATE OR REPLACE FUNCTION check_schedule_overlap_update()
	RETURNS TRIGGER AS
$$
BEGIN

	-- Check if the car's rent doesn't overlap with another rent
	IF EXISTS (
		--
		SELECT 1
		FROM SCHEDULE s
		WHERE check_schedule_overlap(NEW, s)
		  -- Ignore old record
		  AND NOT (
					OLD.CAR_PLATE == s.CAR_PLATE AND
					OLD.USER_ID == s.USER_ID AND
					OLD.START_TIME == s.START_TIME AND
					OLD.END_TIME == s.END_TIME
			)
		--
	) THEN
		RAISE EXCEPTION 'Overlapping schedule intervals';
	END IF;

	RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Execute only if the trigger needs to be updated
DROP TRIGGER IF EXISTS trig_schedule_overlap_update ON SCHEDULE;

CREATE TRIGGER trig_schedule_overlap_update
	BEFORE UPDATE
	ON SCHEDULE
    FOR EACH ROW
EXECUTE FUNCTION check_schedule_overlap_update();