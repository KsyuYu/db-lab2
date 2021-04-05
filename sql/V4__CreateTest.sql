CREATE TABLE Test
(
    TestID  SERIAL PRIMARY KEY,
    Test VARCHAR(512),
    CONSTRAINT  test_unique UNIQUE (Test)
);