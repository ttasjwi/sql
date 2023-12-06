# 문제
- 플랫폼 : 프로그래머스
- 번호 : 062284
- 제목 : 우유와 요거트가 담긴 장바구니
- 난이도 : Level 4
- 우유와 요거트를 동시에 구입한 장바구니의 아이디를 조회하는 SQL 문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/062684" target="_blank">링크</a>

---

# 필요 지식
- GROUP BY
- HAVING

---

# 풀이
```mysql
SELECT cart_id
FROM cart_products
WHERE name in ('Milk', 'Yogurt')
GROUP BY cart_id
HAVING count(DISTINCT name) = 2
ORDER BY cart_id;
```
- name이 Milk, Yogurt 인 튜플들을 cart_id 로 그룹핑
- cart_id별 중복을 제외한 name이 2개인 튜플들로 필터링
