# 문제
- 플랫폼 : 프로그래머스
- 번호 : 077487
- 제목 : 헤비 유저가 소유한 장소
- 난이도 : Level 3
- 헤비 유저가 등록한 공간의 정보를 아이디 순으로 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/77487" target="_blank">링크</a>

---

# 필요 지식
- in절
- 서브쿼리

---

# 풀이
```mysql
SELECT id, name, host_id
FROM places
WHERE host_id in (SELECT host_id
                  FROM places
                  GROUP BY host_id
                  HAVING count(*) >= 2)
ORDER BY id;
```
- 서브 쿼리에서 조건에 맞는 host_id만 추출한다.
- 해당 host_id에 해당하는 id, name, host_id 만 출력한다.

---
