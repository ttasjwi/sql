# 문제
- 플랫폼 : 프로그래머스
- 번호 : 059409
- 제목 : 중성화 여부 파악하기
- 난이도 : Level 2
- 동물의 아이디와 이름, 중성화 여부를 아이디 순으로 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/59409" target="_blank">링크</a>

---

# 필요 지식
- SELECT
- CASE-WHEN-THEN

---

# 풀이
```mysql
SELECT animal_id,
       name,
       CASE
           WHEN
                   (sex_upon_intake LIKE 'Neutered%') OR
                   (sex_upon_intake LIKE 'Spayed%') THEN 'O'
           ELSE 'X'
           END 중성화
FROM animal_ins
ORDER BY animal_id;
```
- case-when-then 을 통해 결과를 후처리했다.

---
