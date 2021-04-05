INSERT INTO Institution (AreaID, Name, TypeName, Parent)
SELECT DISTINCT (SELECT AreaID
                 FROM Area as a
                 INNER JOIN Region as r
                 ON a.RegionID = r.RegionID
                 WHERE g.EORegName = r.Region
                   AND g.EOAreaName = a.AreaName
                   AND g.EOTerName = a.TerName) as a,
                g.EOName,
                g.EOTypeName,
                g.EOParent
FROM GeneralTable as g ON CONFLICT DO NOTHING;

INSERT INTO Institution (AreaID, Name)
SELECT DISTINCT (SELECT AreaID
                 FROM Area as a
                 INNER JOIN Region as r
                 ON a.RegionID = r.RegionID
                 WHERE g.UkrPTRegName = r.Region
                   AND g.UkrPTAreaName = a.AreaName
                   AND g.UkrPTTerName = a.TerName) as a,
                g.UkrPTName
FROM GeneralTable as g ON CONFLICT DO NOTHING;

INSERT INTO Institution (AreaID, Name)
SELECT DISTINCT (SELECT AreaID
                 FROM Area as a
                 INNER JOIN Region as r
                 ON a.RegionID = r.RegionID
                 WHERE g.histPTRegName = r.Region
                   AND g.histPTAreaName = a.AreaName
                   AND g.histPTTerName = a.TerName) as a,
                g.histPTName
FROM GeneralTable as g ON CONFLICT DO NOTHING;

INSERT INTO Institution (AreaID, Name)
SELECT DISTINCT (SELECT AreaID
                 FROM Area as a
                 INNER JOIN Region as r
                 ON a.RegionID = r.RegionID
                 WHERE g.mathPTRegName = r.Region
                   AND g.mathPTAreaName = a.AreaName
                   AND g.mathPTTerName = a.TerName) as a,
                g.mathPTName
FROM GeneralTable as g ON CONFLICT DO NOTHING;

INSERT INTO Institution (AreaID, Name)
SELECT DISTINCT (SELECT AreaID
                 FROM Area as a
                 INNER JOIN Region as r
                 ON a.RegionID = r.RegionID
                 WHERE g.physPTRegName = r.Region
                   AND g.physPTAreaName = a.AreaName
                   AND g.physPTTerName = a.TerName) as a,
                g.physPTName
FROM GeneralTable as g ON CONFLICT DO NOTHING;

INSERT INTO Institution (AreaID, Name)
SELECT DISTINCT (SELECT AreaID
                 FROM Area as a
                 INNER JOIN Region as r
                 ON a.RegionID = r.RegionID
                 WHERE g.chemPTRegName = r.Region
                   AND g.chemPTAreaName = a.AreaName
                   AND g.chemPTTerName = a.TerName) as a,
                g.chemPTName
FROM GeneralTable as g ON CONFLICT DO NOTHING;

INSERT INTO Institution (AreaID, Name)
SELECT DISTINCT (SELECT AreaID
                 FROM Area as a
                 INNER JOIN Region as r
                 ON a.RegionID = r.RegionID
                 WHERE g.bioPTRegName = r.Region
                   AND g.bioPTAreaName = a.AreaName
                   AND g.bioPTTerName = a.TerName) as a,
                g.bioPTName
FROM GeneralTable as g ON CONFLICT DO NOTHING;

INSERT INTO Institution (AreaID, Name)
SELECT DISTINCT (SELECT AreaID
                 FROM Area as a
                 INNER JOIN Region as r
                 ON a.RegionID = r.RegionID
                 WHERE g.geoPTRegName = r.Region
                   AND g.geoPTAreaName = a.AreaName
                   AND g.geoPTTerName = a.TerName) as a,
                g.geoPTName
FROM GeneralTable as g ON CONFLICT DO NOTHING;

INSERT INTO Institution (AreaID, Name)
SELECT DISTINCT (SELECT AreaID
                 FROM Area as a
                 INNER JOIN Region as r
                 ON a.RegionID = r.RegionID
                 WHERE g.engPTRegName = r.Region
                   AND g.engPTAreaName = a.AreaName
                   AND g.engPTTerName = a.TerName) as a,
                g.engPTName
FROM GeneralTable as g ON CONFLICT DO NOTHING;

INSERT INTO Institution (AreaID, Name)
SELECT DISTINCT (SELECT AreaID
                 FROM Area as a
                 INNER JOIN Region as r
                 ON a.RegionID = r.RegionID
                 WHERE g.fraPTRegName = r.Region
                   AND g.fraPTAreaName = a.AreaName
                   AND g.fraPTTerName = a.TerName) as a,
                g.fraPTName
FROM GeneralTable as g ON CONFLICT DO NOTHING;

INSERT INTO Institution (AreaID, Name)
SELECT DISTINCT (SELECT AreaID
                 FROM Area as a
                 INNER JOIN Region as r
                 ON a.RegionID = r.RegionID
                 WHERE g.deuPTRegName = r.Region
                   AND g.deuPTAreaName = a.AreaName
                   AND g.deuPTTerName = a.TerName) as a,
                g.deuPTName
FROM GeneralTable as g ON CONFLICT DO NOTHING;

INSERT INTO Institution (AreaID, Name)
SELECT DISTINCT (SELECT AreaID
                 FROM Area as a
                 INNER JOIN Region as r
                 ON a.RegionID = r.RegionID
                 WHERE g.spaPTRegName = r.Region
                   AND g.spaPTAreaName = a.AreaName
                   AND g.spaPTTerName = a.TerName) as a,
                g.spaPTName
FROM GeneralTable as g ON CONFLICT DO NOTHING;