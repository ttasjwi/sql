SELECT p.product_id, p.product_name, price * IFNULL(sum(amount), 0) total_sales
FROM food_product p
         LEFT JOIN food_order o ON p.product_id = o.product_id
WHERE o.produce_date LIKE '2022-05%'
GROUP BY p.product_id
ORDER BY total_sales DESC, p.product_id;
