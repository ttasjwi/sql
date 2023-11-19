# 문제
- 플랫폼 : 프로그래머스
- 번호 : 131535
- 제목 : 조건에 맞는 회원수 구하기
- 난이도 : Level 1
- 2021년에 가입한 회원 중 나이가 20세 이상 29세 이하인 회원이 몇 명인지 출력
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/131535" target="_blank">링크</a>

---

# 필요 지식
- SELECT

---

# 풀이
```mysql
SELECT COUNT(*) users
FROM user_info
WHERE (joined LIKE '2021%') AND (age BETWEEN 20 AND 29);
```
- 검색 조건에서 가공된 결과물을 조건으로 사용하면 인덱스를 활용하지 못 한다.
- 날짜-age 순으로 인덱스를 걸었을 경우 인덱스를 탈 가능성이 높다.

---
