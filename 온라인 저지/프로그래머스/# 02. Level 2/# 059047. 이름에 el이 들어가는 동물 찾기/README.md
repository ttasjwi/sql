# 문제
- 플랫폼 : 프로그래머스
- 번호 : 059047
- 제목 : 이름에 el이 들어가는 동물 찾기
- 난이도 : Level 2
- 동물 이름 중, 이름에 "EL"이 들어가는 개의 아이디와 이름을 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/59047" target="_blank">링크</a>

---

# 필요 지식
- SELECT
- 문자열 함수

---

# 풀이
```mysql
SELECT animal_id, name
FROM animal_ins
WHERE animal_type = 'Dog' AND LOWER(name) LIKE '%el%'
ORDER BY name ASC;
```
