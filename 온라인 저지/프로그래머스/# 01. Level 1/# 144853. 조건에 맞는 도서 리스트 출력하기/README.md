# 문제
- 플랫폼 : 프로그래머스
- 번호 : 144853
- 제목 : 조건에 맞는 도서 리스트 출력하기
- 난이도 : Level 1
- BOOK 테이블에서 2021년에 출판된 '인문' 카테고리에 속하는 도서 리스트를 찾아서 도서 ID(BOOK_ID), 출판일 (PUBLISHED_DATE)을 출력
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/144853" target="_blank">링크</a>

---

# 필요 지식
- SELECT
- DATE_FORMAT 함수

---

# 풀이
```mysql
SELECT book_id, DATE_FORMAT(published_date, '%Y-%m-%d') published_date
FROM book
WHERE published_date LIKE '2021%' AND category = '인문'
ORDER BY published_date ASC;
```
