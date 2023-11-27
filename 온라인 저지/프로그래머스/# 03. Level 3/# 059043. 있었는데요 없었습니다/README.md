# 문제
- 플랫폼 : 프로그래머스
- 번호 : 059043
- 제목 : 있었는데요 없었습니다
- 난이도 : Level 3
- 보호 시작일보다 입양일이 더 빠른 동물의 아이디와 이름을 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/59043" target="_blank">링크</a>

---

# 필요 지식
- JOIN

---

# 풀이
```mysql
SELECT i.animal_id, i.name
FROM animal_ins i JOIN animal_outs o ON i.animal_id = o.animal_id
WHERE i.datetime > o.datetime
ORDER BY i.datetime;
```
- 조인 후 보호시작일, 입양 종료일을 비교하여 보호 시작일이 더 뒤에 있는 경우를 고른다.

---
