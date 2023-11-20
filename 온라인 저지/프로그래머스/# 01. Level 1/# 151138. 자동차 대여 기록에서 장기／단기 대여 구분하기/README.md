# 문제
- 플랫폼 : 프로그래머스
- 번호 : 151138
- 제목 : 자동차 대여 기록에서 장기/단기 대여 구분하기
- 난이도 : Level 1
- 대여 기간이 30일 이상이면 '장기 대여' 그렇지 않으면 '단기 대여' 로 표시하는 컬럼(컬럼명: RENT_TYPE)을 추가하여 대여기록을 출력
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/151138" target="_blank">링크</a>

---

# 필요 지식
- SELECT
- DATE_FORMAT
- DATEDIFF
- CASE-WHEN-THEN

---

# 풀이
```mysql
SELECT
    history_id,
    car_id,
    DATE_FORMAT(start_date, '%Y-%m-%d') start_date,
    DATE_FORMAT(end_date, '%Y-%m-%d') end_date,
    CASE
        WHEN DATEDIFF(end_date, start_date) + 1 >= 30 THEN '장기 대여'
        ELSE '단기 대여'
    END as rent_type
FROM car_rental_company_rental_history
WHERE start_date LIKE '2022-09%'
ORDER BY history_id DESC;
```
- CASE-WHEN-THEN 문 사용

---
