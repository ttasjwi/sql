SELECT category, sum(sales) total_sales
FROM book b JOIN book_sales bs ON b.book_id = bs.book_id
WHERE sales_date LIKE '2022-01%'
GROUP BY category
ORDER BY category;