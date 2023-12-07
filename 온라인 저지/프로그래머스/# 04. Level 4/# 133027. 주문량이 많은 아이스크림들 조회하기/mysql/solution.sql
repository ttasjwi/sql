SELECT f.flavor
FROM first_half f JOIN july j ON f.flavor = j.flavor
GROUP BY flavor
ORDER BY sum(f.total_order + j.total_order) DESC
LIMIT 3;