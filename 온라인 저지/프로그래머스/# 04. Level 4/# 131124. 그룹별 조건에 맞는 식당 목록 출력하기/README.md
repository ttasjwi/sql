# 문제
- 플랫폼 : 프로그래머스
- 번호 : 131124
- 제목 : 그룹별 조건에 맞는 식당 목록 출력하기
- 난이도 : Level 4
- 리뷰를 가장 많이 작성한 회원의 리뷰들을 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/131124" target="_blank">링크</a>

---

# 필요 지식
- JOIN

---

# 풀이
```mysql
SELECT member_name, review_text, DATE_FORMAT(review_date, '%Y-%m-%d') review_date
FROM member_profile m
         JOIN rest_review r ON m.member_id = r.member_id
WHERE m.member_id =
      (SELECT member_id, member
       FROM rest_review
       GROUP BY member_id
       ORDER BY COUNT(*) DESC
       LiMIT 1)
ORDER BY review_date, review_text;
```
- 우선, 리뷰 테이블에서 그룹핑을 거쳐서 리뷰 갯수가 가장 많은 사용자를 찾는다.
- 그 사용자 id를 기반으로 데이터를 조회한다.

---
