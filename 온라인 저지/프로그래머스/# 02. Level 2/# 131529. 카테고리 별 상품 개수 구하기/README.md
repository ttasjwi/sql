# 문제
- 플랫폼 : 프로그래머스
- 번호 : 131529
- 제목 : 카테고리 별 상품 개수 구하기
- 난이도 : Level 2
- 상품 카테고리 코드(PRODUCT_CODE 앞 2자리) 별 상품 개수를 출력하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/131529" target="_blank">링크</a>

---

# 필요 지식
- SELECT

---

# 풀이
```mysql
SELECT SUBSTR(product_code, 1,2) category, count(*) products
FROM product
GROUP BY category
ORDER BY category
```
