# 문제
- 플랫폼 : 프로그래머스
- 번호 : 151136
- 제목 : 평균 일일 대여 요금 구하기
- 난이도 : Level 1
- 테이블에서 자동차 종류가 'SUV'인 자동차들의 평균 일일 대여 요금을 출력하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/151136" target="_blank">링크</a>

---

# 필요 지식
- SELECT
- AVG 함수
- ROUND 함수

---

# 풀이
```mysql
SELECT ROUND(AVG(daily_fee)) daily_fee
FROM car_rental_company_car
WHERE car_type = 'SUV';
```
- 반올림 : ROUND 함수 사용
- 평균 : AVG 함수 사용
