create TABLE Region
(
    RegionID SERIAL PRIMARY KEY,
    Region VARCHAR(256),
    CONSTRAINT region_unique UNIQUE (Region)
);