SELECT a.animal_id, a.name
FROM animal_ins a
WHERE a.intake_condition <> 'aged'
ORDER BY a.animal_id
