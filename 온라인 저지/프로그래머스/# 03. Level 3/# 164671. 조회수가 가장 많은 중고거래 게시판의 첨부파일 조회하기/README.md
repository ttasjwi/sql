# 문제
- 플랫폼 : 프로그래머스
- 번호 : 164671
- 제목 : 조회수가 가장 많은 중고거래 게시판의 첨부파일 조회하기
- 난이도 : Level 3
- 조회수가 가장 높은 중고거래 게시물에 대한 첨부파일 경로를 조회하는 SQL문을 작성
- 문제 : <a href="https://school.programmers.co.kr/learn/courses/30/lessons/164671" target="_blank">링크</a>

---

# 필요 지식
- SELECT

---

# 풀이
```mysql
SELECT concat('/home/grep/src/', board_id, '/', file_id, file_name, file_ext) file_path
FROM used_goods_file
WHERE board_id = (
    SELECT board_id
    FROM used_goods_board
    ORDER BY views DESC
    LIMIT 1
)
ORDER BY file_id DESC;
```
- 서브쿼리에서 조회수가 최대인 board_id를 얻어낸다.
- 해당 id의 파일명을 반환한다.

---
