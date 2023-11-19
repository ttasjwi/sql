# 문제
- 플랫폼 : 프로그래머스
- 번호 : 131112
- 제목 : 강원도에 위치한 생산공장 목록 출력하기
- 난이도 : Level 1
- 식품공장의 공장 ID, 공장 이름, 주소를 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/131112" target="_blank">링크</a>

---

# 필요 지식
- SELECT

---

# 풀이
```mysql
SELECT factory_id, factory_name, address
FROM food_factory
WHERE address LIKE '강원도%'
ORDER BY factory_id ASC;
```
