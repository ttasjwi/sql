SELECT animal_type, count(*) AS count
FROM animal_ins
WHERE animal_type in ('Cat', 'Dog')
GROUP BY animal_type
ORDER BY animal_type ASC;
