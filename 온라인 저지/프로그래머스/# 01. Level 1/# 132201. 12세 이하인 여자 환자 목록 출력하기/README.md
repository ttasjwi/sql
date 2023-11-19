# 문제
- 플랫폼 : 프로그래머스
- 번호 : 132201
- 제목 : 12세 이하인 여자 환자 목록 출력하기
- 난이도 : Level 1
- 12세 이하인 여자환자의 환자이름, 환자번호, 성별코드, 나이, 전화번호를 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/132201" target="_blank">링크</a>

---

# 필요 지식
- SELECT

---

# 풀이
```mysql
SELECT pt_name, pt_no, gend_cd, age, IFNULL(tlno, 'NONE') tlno
FROM patient
WHERE age <= 12 AND gend_cd = 'W'
ORDER BY age DESC, pt_name ASC;
```
