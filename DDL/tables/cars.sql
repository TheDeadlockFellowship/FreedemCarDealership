CREATE TABLE CARS
(
	-- Identification
	PLATE VARCHAR(12) PRIMARY KEY,
	-- Car information
	BRAND VARCHAR(42),
	MODEL VARCHAR(42),
	COLOR VARCHAR(30),
	YEAR  INT,
	-- Additional information
	NOTES TEXT
);
