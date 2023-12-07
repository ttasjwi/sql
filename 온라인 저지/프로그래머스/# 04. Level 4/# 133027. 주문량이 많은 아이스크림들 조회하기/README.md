# 문제
- 플랫폼 : 프로그래머스
- 번호 : 133027
- 제목 : 주문량이 많은 아이스크림들 조회하기
- 난이도 : Level 4
- 7월 아이스크림 총 주문량과 상반기의 아이스크림 총 주문량을 더한 값이 큰 순서대로 상위 3개의 맛을 조회하는 SQL 문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/133027" target="_blank">링크</a>

---

# 필요 지식
- Join

---

# 풀이
```mysql
SELECT f.flavor
FROM first_half f JOIN july j ON f.flavor = j.flavor
GROUP BY flavor
ORDER BY sum(f.total_order + j.total_order) DESC
LIMIT 3;
```
- flavor로 조인
- 그룹핑 : flavor

---
