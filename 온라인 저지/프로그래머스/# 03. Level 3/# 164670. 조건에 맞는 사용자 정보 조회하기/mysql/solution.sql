SELECT u.user_id,
       u.nickname,
       CONCAT(U.city, ' ', u.street_address1, ' ', u.street_address2)            전체주소,
       CONCAT(SUBSTR(tlno, 1, 3), '-', SUBSTR(tlno, 4, 4), '-', SUBSTR(tlno, 8)) 전화번호
FROM used_goods_user u
         JOIN used_goods_board b ON u.user_id = b.writer_id
GROUP BY u.user_id
HAVING COUNT(*) >= 3
ORDER BY u.user_id DESC;