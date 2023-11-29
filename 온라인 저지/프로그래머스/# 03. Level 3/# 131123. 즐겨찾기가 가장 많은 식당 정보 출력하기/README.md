# 문제
- 플랫폼 : 프로그래머스
- 번호 : 131123
- 제목 : 즐겨찾기가 가장 많은 식당 정보 출력하기
- 난이도 : Level 3
- 음식종류별로 즐겨찾기수가 가장 많은 식당의 음식 종류, ID, 식당 이름, 즐겨찾기수를 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/131123" target="_blank">링크</a>

---

# 필요 지식
- JOIN
- GROUP BY

---

# 풀이
```mysql
SELECT r.food_type, r.rest_id, r.rest_name, r.favorites
FROM rest_info r
         JOIN (SELECT food_type, max(favorites) favorites
               FROM rest_info
               GROUP BY food_type) f
              ON r.food_type = f.food_type
WHERE r.favorites = f.favorites
ORDER BY r.food_type DESC;
```
- 서브 테이블을 하나 준비해서, 음식 종류별 최대 좋아요 수를 구한다.
- 이 테이블을 원래 테이블과 조인한다. food_type 이 같은 행끼리 INNER JOIN한다.
- 조인했을 때, 좋아요수가 종류별 좋아요수와 같은 경우로 조건 필터링

---

