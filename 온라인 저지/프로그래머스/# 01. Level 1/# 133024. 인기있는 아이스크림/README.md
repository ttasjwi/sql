# 문제
- 플랫폼 : 프로그래머스
- 번호 : 133024
- 제목 : 인기있는 아이스크림
- 난이도 : Level 1
- 아이스크림의 맛을 총주문량을 기준으로 내림차순 정렬하고 총주문량이 같다면 출하 번호를 기준으로 오름차순 정렬하여 조회하는 SQL 문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/133024" target="_blank">링크</a>

---

# 필요 지식
- SELECT

---

# 풀이
```mysql
SELECT flavor
FROM first_half
ORDER BY total_order DESC, shipment_id ASC;
```
