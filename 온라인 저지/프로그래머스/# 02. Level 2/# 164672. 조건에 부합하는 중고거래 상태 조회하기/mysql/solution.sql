SELECT board_id,
       writer_id,
       title,
       price,
       CASE status
           WHEN 'SALE' THEN '판매중'
           WHEN 'RESERVED' THEN '예약중'
           ELSE '거래완료'
           END status
FROM used_goods_board
WHERE created_date LIKE '2022-10-05%'
ORDER BY board_id DESC;