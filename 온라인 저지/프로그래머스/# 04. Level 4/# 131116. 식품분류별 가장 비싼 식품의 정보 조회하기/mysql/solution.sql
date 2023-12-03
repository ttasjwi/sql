SELECT f.category, f.price as max_price, f.product_name
FROM food_product f
WHERE (category, price) in (SELECT category, max(price)
                            FROM food_product
                            WHERE category in ('과자', '국', '김치', '식용유')
                            GROUP BY category)
ORDER BY max_price DESC;
