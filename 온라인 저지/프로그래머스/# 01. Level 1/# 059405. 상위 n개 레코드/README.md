# 문제
- 플랫폼 : 프로그래머스
- 번호 : 059405
- 제목 : 상위 n개 레코드
- 난이도 : Level 1
- 동물 보호소에 가장 먼저 들어온 동물의 이름을 조회하는 SQL 문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/59405" target="_blank">링크</a>

---

# 필요 지식
- SELECT

---

# 풀이
```mysql
SELECT a.name
FROM animal_ins a
ORDER BY a.datetime asc
LIMIT 1;
```
- 상위 1개 레코드를 조회할 때는 LIMIT 절을 명시하면 된다.(mysql)
