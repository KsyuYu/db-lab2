CREATE TABLE Exam
(
    ExamID SERIAL PRIMARY KEY,
    OUTID VARCHAR (512),
    TestID INT,
    InstitutionID INT,
    TestStatus VARCHAR(256),
    Ball100 SMALLINT,
    Ball12 SMALLINT,
    Ball SMALLINT,
    DPALevel VARCHAR(256) DEFAULT NULL,
    AdaptScale SMALLINT DEFAULT NULL,

    CONSTRAINT fk_student_exam
        FOREIGN KEY (OUTID)
            REFERENCES Student (OUTID),
    CONSTRAINT fk_exam_institution
        FOREIGN KEY (InstitutionID)
            REFERENCES Institution (InstitutionID),
    CONSTRAINT fk_exam_test
        FOREIGN KEY (TestID)
            REFERENCES Test (TestID)
);