SELECT car_id,
       IF(SUM(IF('2022-10-16' BETWEEN start_date AND end_date, 1, 0)) = 0, '대여 가능', '대여중') availability
FROM car_rental_company_rental_history
GROUP BY car_id
ORDER BY car_id DESC;