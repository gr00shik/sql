insert into users 
	(login, password, sex, birthday) values
    ('Sergey', '1234', 'M', '1984-12-18'),
    ('Olya', '2345', 'F', '1985-01-18'),
    ('Roman', '4567', default, '2012-01-18'),
    ('Alisa', '2345', 'F', '2009-02-02'),
    ('Guest', '0000', 'M', '2019-01-01');
    
insert into usersTMP 
	(login, password, sex, birthday) values
    ('Sergey1', '1234', 'M', '1984-12-18'),
    ('Olya1', '2345', 'F', '1985-01-18'),
    ('Roman1', '4567', default, '2012-01-18'),
    ('Alisa1', '2345', 'F', '2009-02-02'),
    ('Guest1', '0000', 'M', '2019-01-01');
    
    select *, curdate() from users;
    
insert into phones
	(login, phone, office) values
    ('Sergey', '8-000-0000000', 'OFFICE'),
    ('Sergey', '8-000-0000001', 'HOME'),
    ('Olya', '8-000-0000002', 'OFFICE'),
    ('Roman', '8-000-0000003', 'HOME'),
    ('Alisa', '8-000-0000004', 'HOME');
	select * from phones;
    
insert into users 
	(login, password, sex, birthday) select 
    login, password, sex, birthday from usersTMP;
    
insert into testqa (age) values (107);
select * from testqa;
    

