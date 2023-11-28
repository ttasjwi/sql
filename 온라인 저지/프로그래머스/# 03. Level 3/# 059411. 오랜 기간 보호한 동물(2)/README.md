# 문제
- 플랫폼 : 프로그래머스
- 번호 : 059411
- 제목 : 오랜 기간 보호한 동물(2)
- 난이도 : Level 3
- 입양을 간 동물 중, 보호 기간이 가장 길었던 동물 두 마리의 아이디와 이름을 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/59411" target="_blank">링크</a>

---

# 필요 지식
- JOIN

---

# 풀이
```mysql
SELECT o.animal_id, o.name
FROM animal_outs o JOIN animal_ins i ON o.animal_id = i.animal_id
ORDER BY DATEDIFF(o.datetime, i.datetime) DESC
LIMIT 2;
```
