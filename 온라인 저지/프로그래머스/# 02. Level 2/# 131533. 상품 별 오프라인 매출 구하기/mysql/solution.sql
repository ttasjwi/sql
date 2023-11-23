SELECT p.product_code, IFNULL(sum(price * sales_amount), 0) sales
FROM product p
         LEFT JOIN offline_sale o ON p.product_id = o.product_id
GROUP BY p.product_id
ORDER BY sales DESC, p.product_code;
