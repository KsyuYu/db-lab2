INSERT INTO Test (Test)
SELECT DISTINCT UkrTest
FROM GeneralTable
ON CONFLICT DO NOTHING;

INSERT INTO Test (Test)
SELECT DISTINCT histTest
FROM GeneralTable
ON CONFLICT DO NOTHING;

INSERT INTO Test (Test)
SELECT DISTINCT mathTest
FROM GeneralTable
ON CONFLICT DO NOTHING;

INSERT INTO Test (Test)
SELECT DISTINCT physTest
FROM GeneralTable
ON CONFLICT DO NOTHING;

INSERT INTO Test (Test)
SELECT DISTINCT chemTest
FROM GeneralTable
ON CONFLICT DO NOTHING;

INSERT INTO Test (Test)
SELECT DISTINCT bioTest
FROM GeneralTable
ON CONFLICT DO NOTHING;

INSERT INTO Test (Test)
SELECT DISTINCT geoTest
FROM GeneralTable
ON CONFLICT DO NOTHING;

INSERT INTO Test (Test)
SELECT DISTINCT engTest
FROM GeneralTable
ON CONFLICT DO NOTHING;

INSERT INTO Test (Test)
SELECT DISTINCT fraTest
FROM GeneralTable
ON CONFLICT DO NOTHING;

INSERT INTO Test (Test)
SELECT DISTINCT deuTest
FROM GeneralTable
ON CONFLICT DO NOTHING;

INSERT INTO Test (Test)
SELECT DISTINCT spaTest
FROM GeneralTable
ON CONFLICT DO NOTHING;