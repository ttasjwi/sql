# 문제
- 플랫폼 : 프로그래머스
- 번호 : 157341
- 제목 : 대여 기록이 존재하는 자동차 리스트 구하기
- 난이도 : Level 3
- 자동차 종류가 '세단'인 자동차들 중 10월에 대여를 시작한 기록이 있는 자동차 ID 리스트를 출력
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/157341" target="_blank">링크</a>

---

# 필요 지식
- JOIN

---

# 풀이
```mysql
SELECT DISTINCT c.car_id
FROM car_rental_company_car c JOIN car_rental_company_rental_history h ON c.car_id = h.car_id
WHERE C.car_type = '세단' and h.start_date LIKE '2022-10%'
ORDER BY c.car_id DESC;
```
