SELECT COUNT(u.user_id) AS USERS
FROM user_info u
WHERE u.age IS NULL
