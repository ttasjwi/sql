SELECT mcdp_cd 진료과코드, COUNT(*) 5월예약건수
FROM appointment a
WHERE apnt_ymd LIKE '2022-05%'
GROUP BY mcdp_cd
ORDER BY 5월예약건수 ASC, mcdp_cd ASC;