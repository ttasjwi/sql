# 문제
- 플랫폼 : 프로그래머스
- 번호 : 059037
- 제목 : 어린 동물 찾기
- 난이도 : Level 1
- 동물 보호소에 들어온 동물 중 젊은 동물의 아이디와 이름을 조회하는 SQL 문을 작성해주세요.
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/59037" target="_blank">링크</a>

---

# 필요 지식
- SELECT

---

# 풀이
```mysql
SELECT a.animal_id, a.name
FROM animal_ins a
WHERE a.intake_condition <> 'aged'
ORDER BY a.animal_id
```
- 여기서 not 은 스캔 범위를 줄이는데 도움이 되지는 않는다.

---
