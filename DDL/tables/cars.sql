CREATE TABLE CARS
(
	-- Identification
	PLATE VARCHAR(12) PRIMARY KEY,
	-- Car information
	BRAND VARCHAR(30),
	MODEL VARCHAR(30),
	COLOR VARCHAR(30),
	YEAR  INT,
	-- Additional information
	NOTES TEXT
)