# 문제
- 플랫폼 : 프로그래머스
- 번호 : 059406
- 제목 : 동물 수 구하기
- 난이도 : Level 2
- 동물 보호소에 동물이 몇 마리 들어왔는지 조회하는 SQL 문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/59406" target="_blank">링크</a>

---

# 필요 지식
- SELECT
- 집계함수(COUNT, MAX, MIN, SUM, ...)

---

# 풀이
```mysql
SELECT COUNT(*) AS count
FROM animal_ins;
```
