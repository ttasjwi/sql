SELECT HOUR(datetime) hour, COUNT(*) count
FROM animal_outs
WHERE HOUR(datetime) between 9 and 19
GROUP BY hour
ORDER BY hour;
