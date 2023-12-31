show databases;
use camp;
create table emp(id int,name varchar(30),dept varchar(30),age int,salary float);
desc emp;
insert into emp values(1,'ankit','gnt',22,50000);
insert into emp values(2,'ayush','tse',22,51000);
insert into emp values(3,'adarsh','data',22,52000);
insert into emp values(4,'vaish','gnt',22,53000);
SET SQL_SAFE_UPDATES=0;
update emp set  dept='developer' where id=1;
select * from emp;
update emp set salary=48000 where id=2;
select * from emp;
update emp set dept='cloud' where id=4;
select * from emp;
select name,salary,salary+500 as bonus, salary/30 as perDaysalary from emp;
select * from emp where dept<>'developer';
select * from emp;
select * from emp where dept='data' or age<20;
select * from emp where not dept='data';
select * from emp ;
select * from emp where name like 'v%';
select * from emp where name like '_a%';
select * from emp where name like '%s_';
select * from emp;
insert into emp values(5,'mukesh','tester',25,60000);
insert into emp values(6,'mahesh','tester',75,60000);
insert into emp values(7,'mukund','develope',45,60000);
select * from emp order by name desc;
select id,name,upper(name),lower(name),length(name) from emp;
select dept,round(sum(salary),2),count(id) from emp group by dept order by count(id) desc;
select * from emp where dept is null; 
select * from emp where salary > (select salary from emp where name='ayush');
select * from emp where salary > (select salary from emp where dept='tester');
select * from emp where salary in(50000,52000);


