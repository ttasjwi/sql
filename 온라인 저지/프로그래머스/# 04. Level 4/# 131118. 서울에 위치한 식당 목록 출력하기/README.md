# 문제
- 플랫폼 : 프로그래머스
- 번호 : 131118
- 제목 : 서울에 위치한 식당 목록 출력하기
- 난이도 : Level 4
- 서울에 위치한 식당들의 식당 ID, 식당 이름, 음식 종류, 즐겨찾기수, 주소, 리뷰 평균 점수를 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/131118" target="_blank">링크</a>

---

# 필요 지식
- JOIN
- GROUP BY

---

# 풀이
```mysql
SELECT i.rest_id,
       i.rest_name,
       i.food_type,
       i.favorites,
       i.address address,
       ROUND(AVG(r.review_score), 2) score
FROM rest_info i JOIN rest_review r ON i.rest_id = r.rest_id
WHERE i.address LIKE '서울%'
GROUP BY i.rest_id
ORDER BY score DESC, favorites DESC;
```
- JOIN 후 레스토랑 id로 그룹핑한다.

---
