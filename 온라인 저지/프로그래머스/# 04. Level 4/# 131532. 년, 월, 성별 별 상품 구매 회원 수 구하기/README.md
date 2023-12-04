# 문제
- 플랫폼 : 프로그래머스
- 번호 : 131532
- 제목 : 년, 월, 성별 별 상품 구매 회원 수 구하기
- 난이도 : Level 4
- USER_INFO 테이블과 ONLINE_SALE 테이블에서 년, 월, 성별 별로 상품을 구매한 회원수를 집계하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/131532" target="_blank">링크</a>

---

# 필요 지식
- JOIN
- GROUP BY

---

# 풀이
```mysql
SELECT year(sales_date) year, month(sales_date) month, gender, count(distinct s.user_id) users
FROM online_sale s JOIN user_info u ON s.user_id = u.user_id
WHERE gender IS NOT NULL
GROUP BY year, month, gender
HAVING users > 0
ORDER BY year, month, gender;
```
- 필터링 : gender가 null 아님
- select 조건 : 중복되지 않는 user_id
- 그룹핑 : 연-월-성별
- having 조건 : users > 0

---


---
