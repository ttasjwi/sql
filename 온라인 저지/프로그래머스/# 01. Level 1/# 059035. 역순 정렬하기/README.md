# 문제
- 플랫폼 : 프로그래머스
- 번호 : 059035
- 제목 : 역순 정렬하기
- 난이도 : Level 1
- 모든 동물의 이름과 보호 시작일을 조회하는 SQL문을 작성해주세요. (ANIMAL_ID 역순으로)
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/59035" target="_blank">링크</a>

---

# 필요 지식
- SELECT

---

# 풀이
```mysql
SELECT a.name, a.datetime
FROM animal_ins a
ORDER BY a.animal_id DESC;
```
- 테이블 지정 : FROM 절
- 정렬 기준 : ORDER BY 절
- 프로젝션 : SELECT 절
