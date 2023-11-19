# 문제
- 플랫폼 : 프로그래머스
- 번호 : 059415
- 제목 : 최댓값 구하기
- 난이도 : Level 1
- 가장 최근에 들어온 동물은 언제 들어왔는지 조회
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/59415" target="_blank">링크</a>

---

# 필요 지식
- SELECT
- SUM, MAX, MIN, ... 함수

---

# 풀이
```mysql
SELECT
    MAX(datetime) AS 시간
FROM animal_ins
```
