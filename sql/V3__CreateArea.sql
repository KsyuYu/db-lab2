CREATE TABLE Area
(
    AreaID SERIAL PRIMARY KEY,
    RegionID INTEGER,
    AreaName VARCHAR(512),
    TerName VARCHAR(256),
    TerTypeName VARCHAR(128) DEFAULT NULL,
    CONSTRAINT area_unique UNIQUE (RegionID, AreaName, TerName),
    CONSTRAINT fk_area_region
        FOREIGN KEY (RegionID)
            REFERENCES Region (RegionID)
);