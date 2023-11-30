# 문제
- 플랫폼 : 프로그래머스
- 번호 : 059042
- 제목 : 없어진 기록 찾기
- 난이도 : Level 3
- 입양을 간 기록은 있는데, 보호소에 들어온 기록이 없는 동물의 ID와 이름을 ID 순으로 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/59042" target="_blank">링크</a>

---

# 필요 지식
- JOIN

---

# 풀이
```mysql
SELECT o.animal_id, o.name
FROM animal_outs o
         LEFT JOIN animal_ins i ON o.animal_id = i.animal_id
WHERE i.animal_id IS NULL
ORDER BY o.animal_id;
```
- out 테이블에서 in쪽으로 left 조인 후 in쪽의 id가 null 인 경우가 유실된 경우다.

---
