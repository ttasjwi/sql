# 문제
- 플랫폼 : 프로그래머스
- 번호 : 132202
- 제목 : 진료과별 총 예약횟수 출력하기
- 난이도 : Level 2
- 2022년 5월에 예약한 환자 수를 진료과코드 별로 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/132202" target="_blank">링크</a>

---

# 필요 지식
- SELECT

---

# 풀이
```mysql
SELECT mcdp_cd 진료과코드, COUNT(*) 5월예약건수
FROM appointment a
WHERE apnt_ymd LIKE '2022-05%'
GROUP BY mcdp_cd
ORDER BY 5월예약건수 ASC, mcdp_cd ASC;
```
