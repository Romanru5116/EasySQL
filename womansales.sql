SELECT sum(items*price) AS income_from_female
FROM purchases 
WHERE user_gender IN ('female', 'f')
