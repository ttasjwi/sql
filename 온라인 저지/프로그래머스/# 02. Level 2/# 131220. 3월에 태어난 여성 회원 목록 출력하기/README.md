# 문제
- 플랫폼 : 프로그래머스
- 번호 : 131220
- 제목 : 3월에 태어난 여성 회원 목록 출력하기
- 난이도 : Level 2
- 생일이 3월인 여성 회원의 ID, 이름, 성별, 생년월일을 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/131220" target="_blank">링크</a>

---

# 필요 지식
- SELECT

---

# 풀이
```mysql
SELECT member_id, member_name, gender, DATE_FORMAT(date_of_birth, '%Y-%m-%d') date_of_birth
FROM member_profile
WHERE date_of_birth LIKE '%-03-%' AND gender = 'W' AND tlno IS NOT NULL
ORDER BY member_id;
```
