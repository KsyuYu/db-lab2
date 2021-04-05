INSERT INTO Student (OUTID, TestYear, Birth, SexTypeName, RegTypeName, ClassProfileName, ClassLangName, AreaID, InstitutionID)
SELECT OUTID, TestYear, Birth, SexTypeName, RegTypeName, ClassProfileName, ClassLangName,
       (SELECT AreaID
        FROM Area as a
        INNER JOIN Region as r
        ON a.RegionID = r.RegionID
        WHERE g.RegName = r.Region
          AND g.AreaName = a.AreaName
          AND g.TerName = a.TerName) as a,
       (SELECT InstitutionID
        FROM Institution as i
        WHERE g.EOName = i.Name) as i
FROM GeneralTable as g;
