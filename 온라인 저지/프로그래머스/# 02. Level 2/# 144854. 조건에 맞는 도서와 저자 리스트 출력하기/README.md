# 문제
- 플랫폼 : 프로그래머스
- 번호 : 144854
- 제목 : 조건에 맞는 도서와 저자 리스트 출력하기
- 난이도 : Level 2
- '경제' 카테고리에 속하는 도서들의 도서 ID(BOOK_ID), 저자명(AUTHOR_NAME), 출판일(PUBLISHED_DATE) 리스트를 출력하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/144854" target="_blank">링크</a>

---

# 필요 지식
- JOIN

---

# 풀이
```mysql
SELECT book_id, author_name, DATE_FORMAT(published_date, '%Y-%m-%d') published_date
FROM book b
         JOIN author a ON b.author_id = a.author_id
WHERE category = '경제'
ORDER BY published_date ASC;
```
