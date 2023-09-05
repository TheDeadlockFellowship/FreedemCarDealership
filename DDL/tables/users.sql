CREATE TABLE USERS
(
	-- Serial (Auto-increment integer) as identification
	ID            SERIAL PRIMARY KEY,
	-- Required personal information
	FIRST_NAME    VARCHAR(50) NOT NULL,
	LAST_NAME     VARCHAR(50) NOT NULL,
	DATE_OF_BIRTH DATE        NOT NULL,
	-- Contact information
	EMAIL         VARCHAR(100),
	PHONE_PREFIX  INT,
	PHONE_NUMBER  VARCHAR(20),

	-- Ensure that at least one contact information is provided
	CONSTRAINT ENSURE_CONTACT CHECK (
			EMAIL IS NOT NULL
			OR (
					PHONE_PREFIX IS NOT NULL AND
					PHONE_NUMBER IS NOT NULL
				)
		)
);