# 문제
- 플랫폼 : 프로그래머스
- 번호 : 059404
- 제목 : 여러 기준으로 정렬하기
- 난이도 : Level 1
- 동물 보호소에 들어온 모든 동물의 아이디와 이름, 보호 시작일을 이름 순으로 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/59404" target="_blank">링크</a>

---

# 필요 지식
- SELECT

---

# 풀이
```mysql
SELECT a.animal_id, a.name, a.datetime
FROM animal_ins a
ORDER BY a.name ASC, a.datetime DESC;
```
- ORDER BY 절에서 정렬 기준을 순서대로 작성하면 된다.