# 문제
- 플랫폼 : 프로그래머스
- 번호 : 059040
- 제목 : 고양이와 개는 몇 마리 있을까
- 난이도 : Level 2
- 동물 중 고양이와 개가 각각 몇 마리인지 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/59040" target="_blank">링크</a>

---

# 필요 지식
- SELECT
- 집계함수(COUNT, MAX, MIN, SUM, ...)

---

# 풀이
```mysql
SELECT animal_type, count(*) AS count
FROM animal_ins
WHERE animal_type in ('Cat', 'Dog')
GROUP BY animal_type
ORDER BY animal_type ASC;
```
- IN 절을 통해 Cat, Dog 를 찾도록 한다.
- GROUP BY 를 통해 동물의 종류를 기준으로 그룹핑하도록 한다.
- Cat-Dog 순으로 조회되야하므로, animal_type 기준 오름차순 정렬되도록 한다.

---
