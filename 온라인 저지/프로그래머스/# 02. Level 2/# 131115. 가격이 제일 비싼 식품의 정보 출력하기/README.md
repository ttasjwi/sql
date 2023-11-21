# 문제
- 플랫폼 : 프로그래머스
- 번호 : 131115
- 제목 : 가격이 제일 비싼 식품의 정보 출력하기
- 난이도 : Level 2
- 가격이 제일 비싼 식품의 식품 ID, 식품 이름, 식품 코드, 식품분류, 식품 가격을 조회
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/131115" target="_blank">링크</a>

---

# 필요 지식
- SELECT
- LIMIT

---

# 풀이
```mysql
SELECT product_id, product_name, product_cd, category, price
FROM food_product
ORDER BY price DESC
LIMIT 1;
```
- 가격이 최대인 요소를 찾는 것인데, 정렬을 가격 기준 내림차순을 걸고 LIMIT 1을 걸면 된다.

---
