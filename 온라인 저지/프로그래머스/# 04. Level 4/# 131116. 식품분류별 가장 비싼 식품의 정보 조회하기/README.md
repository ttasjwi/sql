# 문제
- 플랫폼 : 프로그래머스
- 번호 : 131116
- 제목 : 식품분류별 가장 비싼 식품의 정보 조회하기
- 난이도 : Level 4
- 식품분류별로 가격이 제일 비싼 식품의 분류, 가격, 이름을 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/131116" target="_blank">링크</a>

---

# 필요 지식
- GROUP BY

---

# 풀이
```mysql
SELECT f.category, f.price as max_price, f.product_name
FROM food_product f
WHERE (category, price) in (SELECT category, max(price)
                            FROM food_product
                            WHERE category in ('과자', '국', '김치', '식용유')
                            GROUP BY category)
ORDER BY max_price DESC;
```
- 우선, 카테고리별 최대 가격을 조회한다. (과자, 국, 김치, 식용유 범위 내에서)
- 카테고리, price 쌍이 위의 결과와 같은 경우에 한해서만 select 한다.

---
