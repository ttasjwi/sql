SELECT r.food_type, r.rest_id, r.rest_name, r.favorites
FROM rest_info r
         JOIN (SELECT food_type, max(favorites) favorites
               FROM rest_info
               GROUP BY food_type) f
              ON r.food_type = f.food_type
WHERE r.favorites = f.favorites
ORDER BY r.food_type DESC;