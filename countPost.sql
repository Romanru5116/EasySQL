SELECT 
    pr.id, 
    pr.nickname
FROM 
    profile pr
JOIN 
    post po ON pr.id = po.owner_id
GROUP BY 
    pr.id, pr.nickname
HAVING 
    COUNT(po.owner_id) > 10;
