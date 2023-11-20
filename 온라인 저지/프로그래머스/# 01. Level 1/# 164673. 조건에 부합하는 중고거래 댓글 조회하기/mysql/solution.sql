SELECT
    b.title title,
    b.board_id board_id,
    r.reply_id reply_id,
    r.writer_id writer_id,
    r.contents contents,
    DATE_FORMAT(r.created_date, '%Y-%m-%d') created_date
FROM
    used_goods_board b
        JOIN used_goods_reply r
             ON b.board_id = r.board_id
WHERE b.created_date LIKE '2022-10%'
ORDER BY r.created_date ASC, b.title ASC;