SELECT a.author_id, author_name, category, SUM(sales * price) total_sales
FROM author a
         JOIN book b ON a.author_id = b.author_id
         JOIN book_sales s ON b.book_id = s.book_id
WHERE sales_date LIKE '2022-01%'
GROUP BY author_id, category
ORDER BY author_id, category DESC;
