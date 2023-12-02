# 문제
- 플랫폼 : 프로그래머스
- 번호 : 151139
- 제목 : 대여 횟수가 많은 자동차들의 월별 대여 횟수 구하기
- 난이도 : Level 3
- 2022년 8월부터 2022년 10월까지 총 대여 횟수가 5회 이상인 자동차들에 대해서 해당 기간 동안의 월별 자동차 ID 별 총 대여 횟수(컬럼명: RECORDS) 리스트를 출력하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/151139" target="_blank">링크</a>

~~---~~

# 필요 지식
- GROUP BY

---

# 풀이
```mysql
SELECT MONTH(start_date) month, car_id, COUNT(*) records
FROM car_rental_company_rental_history h
WHERE car_id IN (SELECT car_id
                 FROM car_rental_company_rental_history
                 WHERE start_date BETWEEN '2022-08-01' AND '2022-10-31'
                 GROUP BY car_id
                 HAVING count(*) >= 5)
  AND start_date BETWEEN '2022-08-01' AND '2022-10-31'
GROUP BY month, car_id
HAVING records > 0
ORDER BY month, car_id DESC;
```
- 우선, 기간 내 조회수가 5건 이상인 car_id들을 모두 조회한다.
- 해당 car_id 이면서 대여일이 8월~10월인 요소들에 대해, month/car_id 그룹핑을 한다.

---
