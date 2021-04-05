INSERT INTO Area (RegionID,
                  AreaName,
                  TerName,
                  TerTypeName)
SELECT DISTINCT (select RegionID from Region as r where r.Region = g.RegName),
                AreaName,
                TerName,
                TerTypeName
FROM GeneralTable as g
ON CONFLICT DO NOTHING;

INSERT INTO Area (RegionID,
                  AreaName,
                  TerName)
SELECT DISTINCT (select RegionID from Region as r where r.Region = g.EORegName),
                EOAreaName,
                EOTerName
FROM GeneralTable as g
ON CONFLICT DO NOTHING;