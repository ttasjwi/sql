# 문제
- 플랫폼 : 프로그래머스
- 번호 : 132204
- 제목 : 취소되지 않은 진료 예약 조회하기
- 난이도 : Level 4
- 2022년 4월 13일 취소되지 않은 흉부외과(CS) 진료 예약 내역을 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/132204" target="_blank">링크</a>

---

# 필요 지식
- JOIN

---

# 풀이
```mysql
SELECT a.apnt_no, p.pt_name, a.pt_no, a.mcdp_cd, d.dr_name, a.apnt_ymd
FROM appointment a
         JOIN patient p ON a.pt_no = p.pt_no
         JOIN doctor d ON a.mddr_id = dr_id
WHERE a.mcdp_cd = 'CS'
  AND a.apnt_ymd LIKE '2022-04-13%'
  AND a.apnt_cncl_yn = 'N'
ORDER BY a.apnt_ymd;
```
- JOIN 만 잘 하면 됨

---
