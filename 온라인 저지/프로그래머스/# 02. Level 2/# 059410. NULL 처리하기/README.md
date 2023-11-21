# 문제
- 플랫폼 : 프로그래머스
- 번호 : 059410
- 제목 : NULL 처리하기
- 난이도 : Level 2
- 동물의 생물 종, 이름, 성별 및 중성화 여부를 아이디 순으로 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/59410" target="_blank">링크</a>

---

# 필요 지식
- SELECT
- NULL 처리

---

# 풀이
```mysql
SELECT animal_type, IFNULL(name, 'No name') AS name, sex_upon_intake
FROM animal_ins
ORDER BY animal_id;
```
- IFNULL 을 이용해 Null 처리를 할 수 있다.

---
