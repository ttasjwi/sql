# 문제
- 플랫폼 : 프로그래머스
- 번호 : 131533
- 제목 : 상품 별 오프라인 매출 구하기
- 난이도 : Level 2
- 상품코드 별 매출액(판매가 * 판매량) 합계를 출력하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/131533" target="_blank">링크</a>

---

# 필요 지식
- JOIN

---

# 풀이
```mysql
SELECT p.product_code, IFNULL(sum(price * sales_amount), 0) sales
FROM product p
         LEFT JOIN offline_sale o ON p.product_id = o.product_id
GROUP BY p.product_id
ORDER BY sales DESC, p.product_code;
```
- FROM : LEFT JOIN을 통해 product, offline_sale을 결합
- GROUP BY : 상품 식별자를 기준으로 그룹핑
- SELECT : price * sales_amount 의 합을 sales 로 함
- ORDER BY : sales 기준 내림차순, product_code 기준 오름차순

---
