SELECT DISTINCT c.car_id
FROM car_rental_company_car c JOIN car_rental_company_rental_history h ON c.car_id = h.car_id
WHERE C.car_type = '세단' and h.start_date LIKE '2022-10%'
ORDER BY c.car_id DESC;