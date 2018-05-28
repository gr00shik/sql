SELECT 
    *
FROM
    users;
#------------------------------------    
SELECT 
    login, password
FROM
    users;
#------------------------------------    
SELECT 
    login
FROM
    users
WHERE
    birthday > '2000-01-01';
#------------------------------------    
SELECT 
    login, COUNT(login)
FROM
    phones
GROUP BY login;
#------------------------------------
SELECT 
    login, phone, office
FROM
    phones
GROUP BY login
HAVING office = 'OFFICE'
ORDER BY login;
#------------------------------------
SELECT 
    login, YEAR(birthday), MONTH(birthday), DAY(birthday)
FROM
    users;
#------------------------------------    
SELECT 
    login
FROM
    users
WHERE
    MONTH(birthday) = 1;
#------------------------------------
SELECT 
    login
FROM
    users
WHERE
    login LIKE '%ya';
#------------------------------------
SELECT 
    u.login, p.phone
FROM
    users u,
    phones p
WHERE
    u.login = p.login;
 #------------------------------------   
SELECT 
    u.login, p.phone
FROM
    users u JOIN
    phones p
ON
    u.login = p.login;
#------------------------------------
SELECT 
    u.login, p.phone
FROM
    users u
        NATURAL JOIN
    phones p;
#------------------------------------
SELECT 
    u.login, p.phone
FROM
    users u
        JOIN
    phones p using(login);
#------------------------------------
SELECT 
    *
FROM
    users u,
    phones p
WHERE
    u.login = p.login;
#------------------------------------
SELECT 
    *
FROM
    users,
    phones;
#------------------------------------
SELECT 
    *
FROM
    users
        CROSS JOIN
    phones;
#------------------------------------










  