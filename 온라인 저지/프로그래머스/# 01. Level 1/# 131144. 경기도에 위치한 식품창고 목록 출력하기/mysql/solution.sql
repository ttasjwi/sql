SELECT f.warehouse_id, f.warehouse_name, f.address, IFNULL(f.freezer_yn, 'N') as freezer_yn
FROM FOOD_WAREHOUSE f
WHERE f.warehouse_name LIKE '창고_경기%';