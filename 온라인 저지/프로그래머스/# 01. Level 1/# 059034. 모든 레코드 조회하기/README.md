# 문제
- 플랫폼 : 프로그래머스
- 번호 : 059034
- 제목 : 모든 레코드 조회하기
- 난이도 : Level 1
- 동물 보호소에 들어온 모든 동물의 정보를 ANIMAL_ID순으로 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/59034" target="_blank">링크</a>

---

# 필요 지식
- SELECT

---

# 풀이
```mysql
SELECT animal_id, animal_type, datetime, intake_condition, name, sex_upon_intake
FROM animal_ins
ORDER BY animal_id ASC;
```
- 모든 동물의 정보를 ANIMAL_ID순으로 조회하는 SQL문을 작성

