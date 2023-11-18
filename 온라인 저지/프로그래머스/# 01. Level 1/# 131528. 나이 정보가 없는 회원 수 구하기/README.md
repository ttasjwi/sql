# 문제
- 플랫폼 : 프로그래머스
- 번호 : 131528
- 제목 : 나이 정보가 없는 회원 수 구하기
- 난이도 : Level 1
- 나이 정보가 없는 회원이 몇 명인지 출력하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/131528" target="_blank">링크</a>

---

# 필요 지식
- SELECT

---

# 풀이
```mysql
SELECT COUNT(u.user_id) AS USERS
FROM user_info u
WHERE u.age IS NULL
```
- 별칭 짓는 방법을 익히는 문제

---
