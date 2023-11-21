# 문제
- 플랫폼 : 프로그래머스
- 번호 : 059041
- 제목 : 동명 동물 수 찾기
- 난이도 : Level 2
- 동물 보호소에 들어온 동물 이름 중 두 번 이상 쓰인 이름과 해당 이름이 쓰인 횟수를 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/59041" target="_blank">링크</a>

---

# 필요 지식
- SELECT
- 집계함수(COUNT, MAX, MIN, SUM, ...)
- HAVING

---

# 풀이
```mysql
SELECT name, COUNT(*) AS count
FROM animal_ins
WHERE name IS NOT NULL
GROUP BY name
HAVING count >= 2
ORDER BY name ASC;
```
- HAVING 절을 통해 집계 결과에 기반한 조건을 지정할 수 있다.

---
