# 문제
- 플랫폼 : 프로그래머스
- 번호 : 059414
- 제목 : DATETIME에서 DATE로 형 변환
- 난이도 : Level 2
- 각 동물의 아이디와 이름, 들어온 날짜1를 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/59414" target="_blank">링크</a>

---

# 필요 지식
- SELECT
- 날짜 처리

---

# 풀이
```mysql
SELECT animal_id, name, DATE_FORMAT(datetime, '%Y-%m-%d') 날짜
FROM animal_ins
ORDER BY animal_id;
```
- DATE_FORMAT 함수를 이용해 형변환할 수 있다.