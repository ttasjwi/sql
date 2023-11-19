# 문제
- 플랫폼 : 프로그래머스
- 번호 : 132203
- 제목 : 흉부외과 또는 일반외과 의사 목록 출력하기
- 난이도 : Level 1
- 진료과가 흉부외과(CS)이거나 일반외과(GS)인 의사의 이름, 의사ID, 진료과, 고용일자를 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/132203" target="_blank">링크</a>

---

# 필요 지식
- SELECT
- DATE_FORMAT 함수

---

# 풀이
```mysql
SELECT dr_name, dr_id, mcdp_cd, DATE_FORMAT(hire_ymd, '%Y-%m-%d') hire_ymd
FROM doctor
WHERE mcdp_cd in ('CS', 'GS')
ORDER BY hire_ymd DESC, dr_name ASC;
```
- DATE_FORMAT 함수 사용하여 날짜 포맷팅이 필요

---
