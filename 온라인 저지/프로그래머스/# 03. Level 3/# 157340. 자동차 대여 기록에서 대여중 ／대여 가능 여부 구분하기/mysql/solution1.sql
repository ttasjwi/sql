SELECT DISTINCT a.car_id,
                CASE
                    WHEN b.car_id IS NULL THEN '대여가능'
                    ELSE '대여중'
                    END availability
FROM car_rental_company_rental_history a
         LEFT JOIN
     (SELECT DISTINCT car_id
      FROM car_rental_company_rental_history
      WHERE start_date <= '2022-10-16'
        AND 'end_date' >= '2022-10-16') b
     ON a.car_id = b.car_id
ORDER BY a.car_id DESC;
