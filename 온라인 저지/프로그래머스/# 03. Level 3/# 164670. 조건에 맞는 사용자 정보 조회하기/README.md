# 문제
- 플랫폼 : 프로그래머스
- 번호 : 164670
- 제목 : 조건에 맞는 사용자 정보 조회하기
- 난이도 : Level 3
- 중고 거래 게시물을 3건 이상 등록한 사용자의 사용자 ID, 닉네임, 전체주소, 전화번호를 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/164670" target="_blank">링크</a>

---

# 필요 지식
- JOIN

---

# 풀이
```mysql
SELECT u.user_id,
       u.nickname,
       CONCAT(U.city, ' ', u.street_address1, ' ', u.street_address2)            전체주소,
       CONCAT(SUBSTR(tlno, 1, 3), '-', SUBSTR(tlno, 4, 4), '-', SUBSTR(tlno, 8)) 전화번호
FROM used_goods_user u
         JOIN used_goods_board b ON u.user_id = b.writer_id
GROUP BY u.user_id
HAVING COUNT(*) >= 3
ORDER BY u.user_id DESC;
```
