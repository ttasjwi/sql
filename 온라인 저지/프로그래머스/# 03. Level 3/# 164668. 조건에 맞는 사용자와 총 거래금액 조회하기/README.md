# 문제
- 플랫폼 : 프로그래머스
- 번호 : 164668
- 제목 : 조건에 맞는 사용자와 총 거래금액 조회하기
- 난이도 : Level 3
- USED_GOODS_BOARD와 USED_GOODS_USER 테이블에서 완료된 중고 거래의 총금액이 70만 원 이상인 사람의 회원 ID, 닉네임, 총거래금액을 조회
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/164668" target="_blank">링크</a>

---

# 필요 지식
- 집계함수

---

# 풀이
```mysql
SELECT user_id, nickname, SUM(price) total_sales
FROM used_goods_user u JOIN used_goods_board b ON u.user_id = b.writer_id
WHERE status = 'DONE'
GROUP BY user_id
HAVING total_sales >= 700000
ORDER BY total_sales;
```
