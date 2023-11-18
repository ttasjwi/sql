# 문제
- 플랫폼 : 프로그래머스
- 번호 : 059403
- 제목 : 동물의 아이디와 이름
- 난이도 : Level 1
- 모든 동물의 아이디와 이름을 ANIMAL_ID순으로 조회
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/59403" target="_blank">링크</a>

---

# 필요 지식
- SELECT

---

# 풀이
```mysql
SELECT a.animal_id, a.name
FROM animal_ins a
ORDER BY a.animal_id ASC;
```
- 이 쿼리는 인덱스 풀스캔을 할 것으로 추정된다.

---
