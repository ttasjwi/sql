# 문제
- 플랫폼 : 프로그래머스
- 번호 : 131530
- 제목 : 가격대 별 상품 개수 구하기
- 난이도 : Level 2
- PRODUCT 테이블에서 만원 단위의 가격대 별로 상품 개수를 출력하는 SQL 문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/131530" target="_blank">링크</a>

---

# 필요 지식
- GROUP BY

---

# 풀이
```mysql
SELECT (price - price%10000) price_group, COUNT(*) products
FROM product
GROUP BY price_group
ORDER BY price_group
```