-- CREATE TABLE
-- CREATE TABLE Netflix(
-- 	UserID INTEGER,
-- 	SubscriptionType VARCHAR,
-- 	MonthlyRevenue INTEGER,
-- 	JoinDate VARCHAR,
-- 	LastPaymentDate VARCHAR,
-- 	Country VARCHAR,
-- 	Age INTEGER,
-- 	Gender VARCHAR,
-- 	Device VARCHAR,
-- 	PlanDuration VARCHAR
-- );

-- INSERT INTO TABLE
-- COPY Netflix FROM 'C:\Program Files\PostgreSQL\15\data\data_copy\netflix.csv' DELIMITER ',' CSV HEADER;

-- SELECT ALL THE DATA
SELECT * FROM Netflix;

-- COUNT HOW MANY USERS BY GENDER
WITH FGENDER AS (SELECT COUNT(Gender) AS femaleCount, UserID FROM Netflix WHERE Gender='Female' GROUP BY Gender),
MGENDER AS (SELECT COUNT(Gender) AS maleCount, Gender FROM Netflix WHERE Gender='Male' GROUP BY Gender)
SELECT f.femaleCount,m.maleCount FROM FGENDER AS f INNER JOIN MGENDER AS m USING(Gender);