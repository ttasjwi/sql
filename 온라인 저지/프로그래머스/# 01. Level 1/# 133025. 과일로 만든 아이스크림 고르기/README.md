# 문제
- 플랫폼 : 프로그래머스
- 번호 : 133025
- 제목 : 과일로 만든 아이스크림 고르기
- 난이도 : Level 1
- 상반기 아이스크림 총주문량이 3,000보다 높으면서 아이스크림의 주 성분이 과일인 아이스크림의 맛을 총주문량이 큰 순서대로 조회
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/133025" target="_blank">링크</a>

---

# 필요 지식
- SELECT
- INNER JOIN

---

# 풀이
```mysql
SELECT f.flavor
FROM first_half f
         JOIN icecream_info i
              ON f.flavor = i.flavor
WHERE f.total_order > 3000
  AND i.ingredient_type = 'fruit_based'
ORDER BY f.total_order DESC;
```
