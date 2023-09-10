CREATE TABLE ONBOARD_DIARY
(
	-- Identification
	PLATE VARCHAR(12),
	DDATE DATE,
	-- Car information
	KM_TRAVELLED DECIMAL,
	GAS_COST DECIMAL,
	MECHANICAL_WEAR TEXT,
	-- Additional information
	NOTES TEXT,

	-- Primary key is the combination of plate and date
	PRIMARY KEY (PLATE, DDATE),

	-- Foreign key to the car table
	FOREIGN KEY (PLATE) REFERENCES CARS (PLATE)
);
