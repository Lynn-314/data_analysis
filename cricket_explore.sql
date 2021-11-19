CREATE DATABASE cric;
USE cric;
SELECT * FROM `cricket-info-with-venue-country`;

### total number of matches played
SELECT count(ID) as `number of matches` FROM `cricket-info-with-venue-country`;

### total number of matches played for each type
SELECT `Type`, count(ID)  as `number of matches` FROM `cricket-info-with-venue-country`
GROUP BY `Type`;

### performance statistics
SELECT `Result`, count(ID)  as `number of matches` FROM `cricket-info-with-venue-country`
GROUP BY `Result`;

### performance statistics outside India and in India
(SELECT `Result`, count(ID)  as `number of matches` FROM `cricket-info-with-venue-country`
WHERE venue_country != "India"
GROUP BY `Result`)
UNION
(SELECT `Result`, count(ID)  as `number of matches` FROM `cricket-info-with-venue-country`
WHERE venue_country = "India"
GROUP BY `Result`)
;
