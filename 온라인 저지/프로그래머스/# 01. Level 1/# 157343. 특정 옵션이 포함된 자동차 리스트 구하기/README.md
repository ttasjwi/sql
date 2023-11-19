# 문제
- 플랫폼 : 프로그래머스
- 번호 : 157343
- 제목 : 특정 옵션이 포함된 자동차 리스트 구하기
- 난이도 : Level 1
- 테이블에서 '네비게이션' 옵션이 포함된 자동차 리스트를 출력하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/157343" target="_blank">링크</a>

---

# 필요 지식
- SELECT
- Like

---

# 풀이
```mysql
SELECT car_id,
       car_type,
       daily_fee,
       options
FROM car_rental_company_car
WHERE options LIKE '%네비게이션%'
ORDER BY car_id DESC;
```
- Like로 전위 조건을 달지 않을 경우 해당 칼럼에 인덱스가 걸려있더라도 인덱스를 제대로 활용하지 못 하는 점은 알아두자.

---
