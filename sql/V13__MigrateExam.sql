INSERT INTO Exam (OUTID, TestID, InstitutionID, TestStatus, Ball100, Ball12, Ball, AdaptScale)
SELECT g.OUTID,
       (SELECT TestID FROM Test WHERE Test = g.UkrTest) as t,
       (SELECT InstitutionID from Institution WHERE Name = g.UkrPTName) as i,
       UkrTestStatus,
       UkrBall100,
       UkrBall12,
       UkrBall,
       UkrAdaptScale
FROM GeneralTable as g
WHERE g.UkrTest IS NOT NULL
   OR g.UkrTestStatus IS NOT NULL
   OR g.UkrPTName IS NOT NULL
   OR g.UkrPTRegName IS NOT NULL
   OR g.UkrPTAreaName IS NOT NULL
   OR g.UkrPTTerName IS NOT NULL
   OR g.UkrBall100 IS NOT NULL
   OR g.UkrBall12 IS NOT NULL
   OR g.UkrBall IS NOT NULL;

INSERT INTO Exam (OUTID, TestID, InstitutionID, TestStatus, Ball100, Ball12, Ball)
SELECT g.OUTID,
       (SELECT TestID FROM Test WHERE Test = g.histTest) as t,
       (SELECT InstitutionID from Institution WHERE Name = g.histPTName) as i,
       histTestStatus,
       histBall100,
       histBall12,
       histBall
FROM GeneralTable as g
WHERE g.histTest IS NOT NULL
   OR g.histTestStatus IS NOT NULL
   OR g.histPTName IS NOT NULL
   OR g.histPTRegName IS NOT NULL
   OR g.histPTAreaName IS NOT NULL
   OR g.histPTTerName IS NOT NULL
   OR g.histBall100 IS NOT NULL
   OR g.histBall12 IS NOT NULL
   OR g.histBall IS NOT NULL;

INSERT INTO Exam (OUTID, TestID, InstitutionID, TestStatus, Ball100, Ball12, Ball)
SELECT g.OUTID,
       (SELECT TestID FROM Test WHERE Test = g.mathTest) as t,
       (SELECT InstitutionID from Institution WHERE Name = g.mathPTName) as i,
       mathTestStatus,
       mathBall100,
       mathBall12,
       mathBall
FROM GeneralTable as g
WHERE g.mathTest IS NOT NULL
   OR g.mathTestStatus IS NOT NULL
   OR g.mathPTName IS NOT NULL
   OR g.mathPTRegName IS NOT NULL
   OR g.mathPTAreaName IS NOT NULL
   OR g.mathPTTerName IS NOT NULL
   OR g.mathBall100 IS NOT NULL
   OR g.mathBall12 IS NOT NULL
   OR g.mathBall IS NOT NULL;

INSERT INTO Exam (OUTID, TestID, InstitutionID, TestStatus, Ball100, Ball12, Ball)
SELECT g.OUTID,
       (SELECT TestID FROM Test WHERE Test = g.physTest) as t,
       (SELECT InstitutionID from Institution WHERE Name = g.physPTName) as i,
       physTestStatus,
       physBall100,
       physBall12,
       physBall
FROM GeneralTable as g
WHERE g.physTest IS NOT NULL
   OR g.physTestStatus IS NOT NULL
   OR g.physPTName IS NOT NULL
   OR g.physPTRegName IS NOT NULL
   OR g.physPTAreaName IS NOT NULL
   OR g.physPTTerName IS NOT NULL
   OR g.physBall100 IS NOT NULL
   OR g.physBall12 IS NOT NULL
   OR g.physBall IS NOT NULL;

INSERT INTO Exam (OUTID, TestID, InstitutionID, TestStatus, Ball100, Ball12, Ball)
SELECT g.OUTID,
       (SELECT TestID FROM Test WHERE Test = g.chemTest) as t,
       (SELECT InstitutionID from Institution WHERE Name = g.chemPTName) as i,
       chemTestStatus,
       chemBall100,
       chemBall12,
       chemBall
FROM GeneralTable as g
WHERE g.chemTest IS NOT NULL
   OR g.chemTestStatus IS NOT NULL
   OR g.chemPTName IS NOT NULL
   OR g.chemPTRegName IS NOT NULL
   OR g.chemPTAreaName IS NOT NULL
   OR g.chemPTTerName IS NOT NULL
   OR g.chemBall100 IS NOT NULL
   OR g.chemBall12 IS NOT NULL
   OR g.chemBall IS NOT NULL;

INSERT INTO Exam (OUTID, TestID, InstitutionID, TestStatus, Ball100, Ball12, Ball)
SELECT g.OUTID,
       (SELECT TestID FROM Test WHERE Test = g.bioTest) as t,
       (SELECT InstitutionID from Institution WHERE Name = g.bioPTName) as i,
       bioTestStatus,
       bioBall100,
       bioBall12,
       bioBall
FROM GeneralTable as g
WHERE g.bioTest IS NOT NULL
   OR g.bioTestStatus IS NOT NULL
   OR g.bioPTName IS NOT NULL
   OR g.bioPTRegName IS NOT NULL
   OR g.bioPTAreaName IS NOT NULL
   OR g.bioPTTerName IS NOT NULL
   OR g.bioBall100 IS NOT NULL
   OR g.bioBall12 IS NOT NULL
   OR g.bioBall IS NOT NULL;

INSERT INTO Exam (OUTID, TestID, InstitutionID, TestStatus, Ball100, Ball12, Ball)
SELECT g.OUTID,
       (SELECT TestID FROM Test WHERE Test = g.geoTest) as t,
       (SELECT InstitutionID from Institution WHERE Name = g.geoPTName) as i,
       geoTestStatus,
       geoBall100,
       geoBall12,
       geoBall
FROM GeneralTable as g
WHERE g.geoTest IS NOT NULL
   OR g.geoTestStatus IS NOT NULL
   OR g.geoPTName IS NOT NULL
   OR g.geoPTRegName IS NOT NULL
   OR g.geoPTAreaName IS NOT NULL
   OR g.geoPTTerName IS NOT NULL
   OR g.geoBall100 IS NOT NULL
   OR g.geoBall12 IS NOT NULL
   OR g.geoBall IS NOT NULL;

INSERT INTO Exam (OUTID, TestID, InstitutionID, TestStatus, Ball100, Ball12, Ball, DPALevel)
SELECT g.OUTID,
       (SELECT TestID FROM Test WHERE Test = g.engTest) as t,
       (SELECT InstitutionID from Institution WHERE Name = g.engPTName) as i,
       engTestStatus,
       engBall100,
       engBall12,
       engBall,
       engDPALevel
FROM GeneralTable as g
WHERE g.engTest IS NOT NULL
   OR g.engTestStatus IS NOT NULL
   OR g.engPTName IS NOT NULL
   OR g.engPTRegName IS NOT NULL
   OR g.engPTAreaName IS NOT NULL
   OR g.engPTTerName IS NOT NULL
   OR g.engBall100 IS NOT NULL
   OR g.engBall12 IS NOT NULL
   OR g.engBall IS NOT NULL;


INSERT INTO Exam (OUTID, TestID, InstitutionID, TestStatus, Ball100, Ball12, Ball, DPALevel)
SELECT g.OUTID,
       (SELECT TestID FROM Test WHERE Test = g.fraTest) as t,
       (SELECT InstitutionID from Institution WHERE Name = g.fraPTName) as i,
       fraTestStatus,
       fraBall100,
       fraBall12,
       fraBall,
       fraDPALevel
FROM GeneralTable as g
WHERE g.fraTest IS NOT NULL
   OR g.fraTestStatus IS NOT NULL
   OR g.fraPTName IS NOT NULL
   OR g.fraPTRegName IS NOT NULL
   OR g.fraPTAreaName IS NOT NULL
   OR g.fraPTTerName IS NOT NULL
   OR g.fraBall100 IS NOT NULL
   OR g.fraBall12 IS NOT NULL
   OR g.fraBall IS NOT NULL;

INSERT INTO Exam (OUTID, TestID, InstitutionID, TestStatus, Ball100, Ball12, Ball, DPALevel)
SELECT g.OUTID,
       (SELECT TestID FROM Test WHERE Test = g.deuTest) as t,
       (SELECT InstitutionID from Institution WHERE Name = g.deuPTName) as i,
       deuTestStatus,
       deuBall100,
       deuBall12,
       deuBall,
       deuDPALevel
FROM GeneralTable as g
WHERE g.deuTest IS NOT NULL
   OR g.deuTestStatus IS NOT NULL
   OR g.deuPTName IS NOT NULL
   OR g.deuPTRegName IS NOT NULL
   OR g.deuPTAreaName IS NOT NULL
   OR g.deuPTTerName IS NOT NULL
   OR g.deuBall100 IS NOT NULL
   OR g.deuBall12 IS NOT NULL
   OR g.deuBall IS NOT NULL;

INSERT INTO Exam (OUTID, TestID, InstitutionID, TestStatus, Ball100, Ball12, Ball, DPALevel)
SELECT g.OUTID,
       (SELECT TestID FROM Test WHERE Test = g.spaTest) as t,
       (SELECT InstitutionID from Institution WHERE Name = g.spaPTName) as i,
       spaTestStatus,
       spaBall100,
       spaBall12,
       spaBall,
       spaDPALevel
FROM GeneralTable as g
WHERE g.spaTest IS NOT NULL
   OR g.spaTestStatus IS NOT NULL
   OR g.spaPTName IS NOT NULL
   OR g.spaPTRegName IS NOT NULL
   OR g.spaPTAreaName IS NOT NULL
   OR g.spaPTTerName IS NOT NULL
   OR g.spaBall100 IS NOT NULL
   OR g.spaBall12 IS NOT NULL
   OR g.spaBall IS NOT NULL;