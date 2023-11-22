SELECT hour, COUNT(*) count
FROM (SELECT HOUR(datetime) hour FROM animal_outs) hours
WHERE hour between 9 and 19
GROUP BY hour
ORDER BY hour ASC;
