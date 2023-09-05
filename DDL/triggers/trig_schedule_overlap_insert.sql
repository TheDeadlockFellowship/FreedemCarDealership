CREATE OR REPLACE FUNCTION check_schedule_overlap_insert()
	RETURNS TRIGGER AS
$$
BEGIN

	-- Check if the new rent doesn't overlap with any other rent
	-- with same car or same user
	IF EXISTS (
		--
		SELECT 1
		FROM SCHEDULE s
		WHERE check_schedule_overlap(NEW, s)
		--
	) THEN
		RAISE EXCEPTION 'Overlapping schedule intervals';
	END IF;

	RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Execute only if the trigger needs to be updated
DROP TRIGGER IF EXISTS trig_schedule_overlap_insert ON SCHEDULE;

CREATE TRIGGER trig_schedule_overlap_insert
	BEFORE INSERT
	ON SCHEDULE
	FOR EACH ROW
EXECUTE FUNCTION check_schedule_overlap_insert();