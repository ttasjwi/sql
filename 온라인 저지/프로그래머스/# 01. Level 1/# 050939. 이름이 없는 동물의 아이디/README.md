# 문제
- 플랫폼 : 프로그래머스
- 번호 : 050939
- 제목 : 이름이 없는 동물의 아이디
- 난이도 : Level 1
- 이름이 없는 채로 들어온 동물의 ID를 조회
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/50939" target="_blank">링크</a>

---

# 필요 지식
- SELECT

---

# 풀이
```mysql
SELECT animal_id
FROM animal_ins
WHERE name IS NULL
ORDER BY animal_id ASC;
```
