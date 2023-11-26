# 문제
- 플랫폼 : 프로그래머스
- 번호 : 131536
- 제목 : 재구매가 일어난 상품과 회원 리스트 구하기
- 난이도 : Level 2
- 동일한 회원이 동일한 상품을 재구매한 데이터를 구하여, 재구매한 회원 ID와 재구매한 상품 ID를 출력하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/131536" target="_blank">링크</a>

---

# 필요 지식
- GROUP BY
- HAVING

---

# 풀이
```mysql
SELECT user_id, product_id
FROM online_sale
GROUP BY user_id, product_id
HAVING count(*) >= 2
ORDER BY user_id, product_id DESC;
```
- 그룹핑 후 집계 결과에 대한 조건은 HAVING 절을 지정해주면 된다.

---
