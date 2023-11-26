# 문제
- 플랫폼 : 프로그래머스
- 번호 : 164672
- 제목 : 조건에 부합하는 중고거래 상태 조회하기
- 난이도 : Level 2
- 2022년 10월 5일에 등록된 중고거래 게시물의 게시글 ID, 작성자 ID, 게시글 제목, 가격, 거래상태를 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/164672" target="_blank">링크</a>

---

# 필요 지식
- CASE 문

---

# 풀이
```mysql
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
```
