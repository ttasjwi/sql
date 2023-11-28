# 문제
- 플랫폼 : 프로그래머스
- 번호 : 131113
- 제목 : 조건별로 분류하여 주문상태 출력하기
- 난이도 : Level 3
- FOOD_ORDER 테이블에서 5월 1일을 기준으로 주문 ID, 제품 ID, 출고일자, 출고여부를 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/131113" target="_blank">링크</a>

---

# 필요 지식
- CASE문

---

# 풀이
```mysql
SELECT order_id,
       product_id,
       DATE_FORMAT(out_date, '%Y-%m-%d') out_date,
       CASE
           WHEN out_date <= '2022-05-01' THEN '출고완료'
           WHEN out_date > '2022-05-01' THEN '출고대기'
           ELSE '출고미정'
           END AS 출고여부
FROM food_order
ORDER BY order_id;
```
- CASE 문 활용
