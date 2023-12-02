# 문제
- 플랫폼 : 프로그래머스
- 번호 : 059045
- 제목 : 보호소에서 중성화한 동물
- 난이도 : Level 4
- 보호소에서 중성화 수술을 거친 동물 정보를 알아보려 합니다. 보호소에 들어올 당시에는 중성화되지 않았지만, 보호소를 나갈 당시에는 중성화된 동물의 아이디와 생물 종, 이름을 조회하는 아이디 순으로 조회
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/59045" target="_blank">링크</a>

---

# 필요 지식
- JOIN

---

# 풀이
```mysql
SELECT i.animal_id, i.animal_type, i.name
FROM animal_ins i
         JOIN animal_outs o ON i.animal_id = o.animal_id
WHERE i.sex_upon_intake LIKE 'Intact%'
  AND (o.sex_upon_outcome LIKE 'Spayed%' OR o.sex_upon_outcome LIKE 'Neutered%')
ORDER BY i.animal_id;
```
- 조인 후 입양 테이블이 성별이 'Intact'로 시작하면서, 분양 테이블에서는 'Spayed' 또는 'Neutered'로 시작하는 동물을 조회한다.

