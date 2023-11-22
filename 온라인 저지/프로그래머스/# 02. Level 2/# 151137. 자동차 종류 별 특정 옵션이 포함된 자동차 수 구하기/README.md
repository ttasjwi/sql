# 문제
- 플랫폼 : 프로그래머스
- 번호 : 151147
- 제목 : 자동차 종류 별 특정 옵션이 포함된 자동차 수 구하기
- 난이도 : Level 2
- 테이블에서 '통풍시트', '열선시트', '가죽시트' 중 하나 이상의 옵션이 포함된 자동차가 자동차 종류 별로 몇 대인지 출력하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/151137" target="_blank">링크</a>

---

# 필요 지식
- LIKE

---

# 풀이
```mysql
SELECT car_type, COUNT(*) cars
FROM car_rental_company_car
WHERE (options LIKE '%통풍시트%') OR (options LIKE '%열선시트%') OR (options LIKE '%가죽시트%')
GROUP BY car_type
ORDER BY car_type;
```
