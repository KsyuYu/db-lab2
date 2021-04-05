CREATE TABLE Institution
(
    InstitutionID SERIAL PRIMARY KEY,
    AreaID INT,
    Name TEXT,
    TypeName VARCHAR(512) DEFAULT NULL,
    Parent TEXT DEFAULT NULL,
    CONSTRAINT  institution_unique UNIQUE (Name),
    CONSTRAINT fk_institution_area
        FOREIGN KEY (AreaID)
            REFERENCES Area (AreaID)
);