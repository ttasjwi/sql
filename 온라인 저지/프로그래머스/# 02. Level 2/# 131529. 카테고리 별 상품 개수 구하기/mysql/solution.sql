SELECT SUBSTR(product_code, 1,2) category, count(*) products
FROM product
GROUP BY category
ORDER BY category