CREATE TABLE Student
(
    OUTID VARCHAR (512) PRIMARY KEY,
    AreaID INT,
    InstitutionID INT,
    TestYear SMALLINT,
    Birth SMALLINT,
    SexTypeName VARCHAR (256),
    RegTypeName VARCHAR(1024),
    ClassProfileName VARCHAR(256),
    ClassLangName VARCHAR(256),

    CONSTRAINT fk_student_area
        FOREIGN KEY (AreaID)
            REFERENCES Area (AreaID),

    CONSTRAINT fk_student_institution
        FOREIGN KEY (InstitutionID)
            REFERENCES Institution (InstitutionID)
);