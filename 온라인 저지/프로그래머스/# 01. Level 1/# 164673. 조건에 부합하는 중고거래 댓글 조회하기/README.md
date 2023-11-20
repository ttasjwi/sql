# 문제
- 플랫폼 : 프로그래머스
- 번호 : 164673
- 제목 : 조건에 부합하는 중고거래 댓글 조회하기
- 난이도 : Level 1
- 2022년 10월에 작성된 게시글 제목, 게시글 ID, 댓글 ID, 댓글 작성자 ID, 댓글 내용, 댓글 작성일을 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/164673" target="_blank">링크</a>

---

# 필요 지식
- SELECT
- JOIN
- DATE_FORMAT

---

# 풀이
```mysql
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
```
- 문제에서 말하는 게시글 작성일, 댓글 작성일에 주의하자.

---
