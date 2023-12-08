SELECT member_name, review_text, DATE_FORMAT(review_date, '%Y-%m-%d') review_date
FROM member_profile m
         JOIN rest_review r ON m.member_id = r.member_id
WHERE m.member_id =
      (SELECT member_id, member
       FROM rest_review
       GROUP BY member_id
       ORDER BY COUNT(*) DESC
       LiMIT 1)
ORDER BY review_date, review_text;