#list out the details about 'smith'
select * from employee where last_name = 'smith';

#list out the employees who are working in department 20
select last_name from employees where departmentId=20;

#list out the employees who are earning salary between 3000 and 4500
select employeeid, last_name from employee where salary between 3000 and 4500;

#list out the employees who are working in department 10 or 20
select last_name from employee where departmentid in (10,20);

#list out the employees who are not working in department 10 or 30
select last_name from employee where departmentid not in (10,30);

#list out the employees whose name starts with s
select last_name from employee where last_name like 's%';

#list out the employees whose name starts with s and end with h
select last_name from employee where last_name like 's%h';

#list out the employees whose name length is 4 starts with s
select last_name from employee where last_name like 's___';

#list out the employees who are working in department 10 and draw the salaries more than 3500
select last_name from employees where departmentId = 10 and salary > 3500;

#list out the employees who are not receiving commission
select last_name from employee where comm is null;
