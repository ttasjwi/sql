# 문제
- 플랫폼 : 프로그래머스
- 번호 : 133026
- 제목 : 성분으로 구분한 아이스크림 총 주문량
- 난이도 : Level 2
- 상반기 동안 각 아이스크림 성분 타입과 성분 타입에 대한 아이스크림의 총주문량을 총주문량이 작은 순서대로 조회하는 SQL 문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/133026" target="_blank">링크</a>

---

# 필요 지식
- JOIN

---

# 풀이
```mysql
SELECT ingredient_type, sum(total_order) total_order
FROM first_half f
    JOIN icecream_info i ON f.flavor = i.flavor
GROUP BY ingredient_type
ORDER BY total_order ASC;
```

---
