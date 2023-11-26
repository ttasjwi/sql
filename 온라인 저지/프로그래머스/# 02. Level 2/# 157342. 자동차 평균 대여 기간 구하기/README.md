# 문제
- 플랫폼 : 프로그래머스
- 번호 : 157342
- 제목 : 자동차 평균 대여 기간 구하기
- 난이도 : Level 2
- 테이블에서 평균 대여 기간이 7일 이상인 자동차들의 자동차 ID와 평균 대여 기간(컬럼명: AVERAGE_DURATION) 리스트를 출력하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/157342" target="_blank">링크</a>

---

# 필요 지식
- 집계함수
- HAVING
- 날짜 처리
- 반올림

---

# 풀이
```mysql
SELECT car_id, ROUND(AVG(DATEDIFF(end_date, start_date)) + 1, 1) average_duration
FROM car_rental_company_rental_history
GROUP BY car_id
HAVING average_duration >= 7
ORDER BY average_duration DESC, car_id DESC;
```
- 말의 표현에 주의. DATEDIFF 는 두 날짜의 차이를 구하는 함수인데 문제에서 원하는 상황은 시작-종료일이 같으면 1일로 친다. 그래서 1을 더해야한다.

---

