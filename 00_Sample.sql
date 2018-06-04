use testdb;

SELECT 
    users.login, phones.phone
FROM
    users,
    phones
WHERE
   phones.login = phones.login
        AND phones.office = 'OFFICE';
                
SELECT 
    login
FROM
    phones
GROUP BY login
HAVING COUNT(login) > 1;

SELECT 
    users.login
FROM
    users
WHERE
    users.login = ANY (SELECT 
            login
        FROM
            phones
        WHERE
            office = 'OFFICE'); 

