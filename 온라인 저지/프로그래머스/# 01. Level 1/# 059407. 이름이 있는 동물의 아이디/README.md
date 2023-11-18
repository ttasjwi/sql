# 문제
- 플랫폼 : 프로그래머스
- 번호 : 059407
- 제목 : 어린 동물 찾기
- 난이도 : Level 1
- 동물 보호소에 들어온 동물 중 젊은 동물의 아이디와 이름을 조회하는 SQL 문을 작성해주세요.
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/59407" target="_blank">링크</a>

---

# 필요 지식
- SELECT

---

# 풀이
```mysql
SELECT a.animal_id
FROM animal_ins a
WHERE a.name IS NOT NULL
ORDER BY a.animal_id
```
- INNODB 스토리지엔진 기준으로는 ORDER BY에서 a 의 animal_id를 지정하지 않는게 가능하긴 하다.
- 왜나하면 PK 기준으로 클러스터링 인덱스가 생성되기 때문이다.
- 그래도 정렬 기준을 명시적으로 지정하는 것이 좋다.

---
