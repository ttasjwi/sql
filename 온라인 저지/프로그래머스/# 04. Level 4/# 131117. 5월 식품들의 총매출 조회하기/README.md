# 문제
- 플랫폼 : 프로그래머스
- 번호 : 131117
- 제목 : 5월 식품들의 총매출 조회하기
- 난이도 : Level 4
- 생산일자가 2022년 5월인 식품들의 식품 ID, 식품 이름, 총매출을 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/131117" target="_blank">링크</a>

---

# 필요 지식
- GROUP BY

---

# 풀이
```mysql
SELECT p.product_id, p.product_name, price * IFNULL(sum(amount), 0) total_sales
FROM food_product p
    LEFT JOIN food_order o ON p.product_id = o.product_id
WHERE o.produce_date LIKE '2022-05%'
GROUP BY p.product_id
ORDER BY total_sales DESC, p.product_id;
```
- left join 한다.
- product_id로 그룹핑
- amount 합과 price 곱을 total_sale로 한다.

---
