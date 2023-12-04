SELECT year(sales_date) year, month(sales_date) month, gender, count(distinct s.user_id) users
FROM online_sale s
         JOIN user_info u ON s.user_id = u.user_id
WHERE gender IS NOT NULL
GROUP BY year, month, gender
HAVING users > 0
ORDER BY year, month, gender;