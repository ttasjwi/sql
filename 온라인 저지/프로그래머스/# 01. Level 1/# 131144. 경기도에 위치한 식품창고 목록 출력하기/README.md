# 문제
- 플랫폼 : 프로그래머스
- 번호 : 131144
- 제목 : 경기도에 위치한 식품창고 목록 출력하기
- 난이도 : Level 1
- 냉동시설 여부가 NULL인 경우, 'N'으로 출력시켜 주시고 결과는 창고 ID를 기준으로 오름차순 정렬
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/131144" target="_blank">링크</a>

---

# 필요 지식
- SELECT

---

# 풀이
```mysql
SELECT f.warehouse_id, f.warehouse_name, f.address, IFNULL(f.freezer_yn, 'N') as freezer_yn
FROM FOOD_WAREHOUSE f
WHERE f.warehouse_name LIKE '창고_경기%';
```
- IFNULL 함수는 1번째 인자가 NULL 이면 두번째 인자로 대체하는 함수다.
- like 문 사용시 주의점 : 시작조건을 거는 것은, 해당 칼럼에 인덱스가 걸려있을 때 인덱스를 타지만 후위조건을 걸면 인덱스를 사용하지 못 한다.

---
