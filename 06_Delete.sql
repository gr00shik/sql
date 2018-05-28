delete from users;
delete from users where login in (select login from phones);