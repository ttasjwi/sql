# 문제
- 플랫폼 : 프로그래머스
- 번호 : 059044
- 제목 : 오랜 기간 보호한 동물(1)
- 난이도 : Level 3
- 오래 보호소에 있었던 동물 3마리의 이름과 보호 시작일을 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/59044" target="_blank">링크</a>

---

# 필요 지식
- LEFT JOIN

---

# 풀이
```mysql
SELECT i.name, i.datetime
FROM animal_ins i LEFT JOIN animal_outs o ON i.animal_id = o.animal_id
WHERE o.animal_id IS NULL
ORDER BY i.datetime
LIMIT 3;
```
- 입양일이 없는 행들을 찾아야하므로 LEFT JOIN 후 outs 쪽의 id가 없는 것들로 필터링한다.

---
