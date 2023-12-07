# 문제
- 플랫폼 : 프로그래머스
- 번호 : 144856
- 제목 : 저자 별 카테고리 별 매출액 집계하기
- 난이도 : Level 4
- 2022년 1월의 도서 판매 데이터를 기준으로 저자 별, 카테고리 별 매출액(TOTAL_SALES = 판매량 * 판매가) 을 구하여, 저자 ID(AUTHOR_ID), 저자명(AUTHOR_NAME), 카테고리(CATEGORY), 매출액(SALES) 리스트를 출력
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/144856" target="_blank">링크</a>

---

# 필요 지식
- Join

---

# 풀이
```mysql
SELECT a.author_id, author_name, category, SUM(sales * price) total_sales
FROM author a
         JOIN book b ON a.author_id = b.author_id
         JOIN book_sales s ON b.book_id = s.book_id
WHERE sales_date LIKE '2022-01%'
GROUP BY author_id, category
ORDER BY author_id, category DESC;
```
- 세개의 테이블을 조인한 뒤 author_id, category 별로 그룹핑한다.

---
