create database carb_em;

use carb_em;

select * from `carbon emission`;

rename table `carbon emission` to carbtab;

select COUNT(*) from carbtab;

-- Create a view of the profiles with the highest emissions (top 10%) --

CREATE VIEW v_top10 AS 
SELECT  * FROM carbtab
ORDER BY carbonemission DESC
LIMIT 1000;

select * from v_top10;


-- Create a view of the profiles with the lowest emissions (bottom 10%) --

CREATE VIEW v_bot10 AS
SELECT * FROM carbtab
ORDER BY carbonemission ASC
LIMIT 1000;

SELECT * FROM v_bot10;


-- Create a view of the carbon emission for top and bottom 10% --

CREATE VIEW v_top10_em AS
SELECT CarbonEmission FROM carbtab
ORDER BY CarbonEmission DESC
LIMIT 1000;

CREATE VIEW v_bot10_em AS
SELECT CarbonEmission FROM carbtab
ORDER BY CarbonEmission ASC
LIMIT 1000;

SELECT * FROM v_top10_em;
SELECT * FROM v_bot10_em;


-- Create a view of the Average of top and bottom 10% of Emissions --

CREATE VIEW v_avg_top10_em AS
SELECT AVG(CarbonEmission) FROM v_top10_em;

CREATE VIEW v_avg_bot10_em AS
SELECT AVG(CarbonEmission) FROM v_bot10_em;

SELECT * FROM v_avg_top10_em;
SELECT * FROM v_avg_bot10_em;


-- Create views of Heating Energy Source for top and bottom 10% --

SELECT * FROM carbtab;

drop view if exists v_heating;
CREATE VIEW v_heating_top10 AS
SELECT `Heating Energy Source`, CarbonEmission FROM v_top10;

CREATE VIEW v_heating_bot10 AS
SELECT `Heating Energy Source`, CarbonEmission FROM v_bot10;

SELECT * FROM v_heating_top10;
SELECT * FROM v_heating_bot10;

-- Create a view of the Recycling habits of the top and bottom 10% --

Select distinct Recycling from carbtab;

CREATE VIEW v_rec_top10 AS
SELECT Recycling, CarbonEmission FROM v_top10;

CREATE VIEW v_rec_bot10 AS
SELECT Recycling, CarbonEmission FROM v_bot10;

SELECT * FROM v_rec_top10;
SELECT * FROM v_rec_bot10;


-- Create views for Air Travel Frequency and Emissions --

CREATE VIEW v_airtrav_top10 AS
SELECT `Frequency of Traveling by Air`, CarbonEmission FROM v_top10;

CREATE VIEW v_airtrav_bot10 AS
SELECT `Frequency of Traveling by Air`, CarbonEmission FROM v_bot10;

SELECT * FROM v_airtrav_top10;
SELECT * FROM v_airtrav_bot10;

CREATE VIEW v_airtrav AS
SELECT `Frequency of Traveling by Air`, CarbonEmission FROM carbtab;

SELECT * FROM v_airtrav;


-- Create views of Means of Transportation and Emissions for top and bottom 10% --

CREATE VIEW v_trans_top10 AS
SELECT Transport, CarbonEmission FROM v_top10;

CREATE VIEW v_trans_bot10 AS
SELECT Transport, CarbonEmission FROM v_bot10;

SELECT * FROM v_trans_top10;
SELECT * FROM v_trans_bot10;


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
 




























