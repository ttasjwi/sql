# 문제
- 플랫폼 : 프로그래머스
- 번호 : 157340
- 제목 : 자동차 대여 기록에서 대여중 / 대여 가능 여부 구분하기
- 난이도 : Level 3
- 2022년 10월 16일에 대여 중인 자동차인 경우 '대여중' 이라고 표시하고, 대여 중이지 않은 자동차인 경우 '대여 가능'을 표시하는 컬럼(컬럼명: AVAILABILITY)을 추가하여 자동차 ID와 AVAILABILITY 리스트를 출력하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/157340" target="_blank">링크</a>

---

# 필요 지식
- GROUP BY
- JOIN

---

# 풀이
## 풀이1
```mysql
SELECT DISTINCT a.car_id,
                CASE
                    WHEN b.car_id IS NULL THEN '대여가능'
                    ELSE '대여중'
                    END availability
FROM car_rental_company_rental_history a
         LEFT JOIN
     (SELECT DISTINCT car_id
      FROM car_rental_company_rental_history
      WHERE start_date <= '2022-10-16'
        AND 'end_date' >= '2022-10-16') b
     ON a.car_id = b.car_id
ORDER BY a.car_id DESC;
```
- left join 을 이용한 방법



## 풀이2
```mysql
SELECT car_id,
       IF(SUM(IF('2022-10-16' BETWEEN start_date AND end_date, 1, 0)) = 0, '대여 가능', '대여중') availability
FROM car_rental_company_rental_history
GROUP BY car_id
ORDER BY car_id DESC;
```
- group by 를 이용하는 방법
