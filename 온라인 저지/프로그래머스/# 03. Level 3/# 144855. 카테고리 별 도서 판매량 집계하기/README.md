# 문제
- 플랫폼 : 프로그래머스
- 번호 : 144855
- 제목 : 카테고리 별 도서 판매량 집계하기
- 난이도 : Level 3
- 2022년 1월의 카테고리 별 도서 판매량을 합산하고, 카테고리(CATEGORY), 총 판매량(TOTAL_SALES) 리스트를 출력
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/144855" target="_blank">링크</a>

---

# 필요 지식
- 집계함수

---

# 풀이
```mysql
SELECT category, sum(sales) total_sales
FROM book b JOIN book_sales bs ON b.book_id = bs.book_id
WHERE sales_date LIKE '2022-01%'
GROUP BY category
ORDER BY category;
```
