# 문제
- 플랫폼 : 프로그래머스
- 번호 : 059046
- 제목 : 루시와 엘라 찾기
- 난이도 : Level 2
- 동물 보호소에 들어온 동물 중 이름이 Lucy, Ella, Pickle, Rogan, Sabrina, Mitty인 동물의 아이디와 이름, 성별 및 중성화 여부를 조회하는 SQL 문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/59046" target="_blank">링크</a>

---

# 필요 지식
- in절

---

# 풀이
```mysql
SELECT animal_id, name, sex_upon_intake
FROM animal_ins
WHERE name in ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
ORDER BY animal_id;
```
