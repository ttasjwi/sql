# 문제
- 플랫폼 : 프로그래머스
- 번호 : 059412
- 제목 : 입양 시각 구하기(1)
- 난이도 : Level 2
- 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/59412" target="_blank">링크</a>

---

# 필요 지식
- SELECT
- 집계함수(COUNT, MAX, MIN, SUM, ...)

---

# 풀이
## 풀이1
```mysql
SELECT HOUR(datetime) hour, COUNT(*) count
FROM animal_outs
WHERE HOUR(datetime) between 9 and 19
GROUP BY hour
ORDER BY hour;
```

## 풀이2
```mysql
SELECT hour, COUNT(*) count
FROM (SELECT HOUR(datetime) hour FROM animal_outs) hours
WHERE hour between 9 and 19
GROUP BY hour
ORDER BY hour ASC;
```
- 서브쿼리를 이용해서 HOUR를 한번 연산하는 방법
