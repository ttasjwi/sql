SELECT cart_id
FROM cart_products
WHERE name in ('Milk', 'Yogurt')
GROUP BY cart_id
HAVING count(DISTINCT name) = 2
ORDER BY cart_id;
