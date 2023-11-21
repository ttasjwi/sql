SELECT name, COUNT(*) AS count
FROM animal_ins
WHERE name IS NOT NULL
GROUP BY name
HAVING count >= 2
ORDER BY name ASC;