#Display the employee who got the maximum salary
select last_name from employee where salary in (select max(salary) from employee);

#Display the employees who are working in Sales department
select last_name from employee where departmentid in (select departmentid from department where name = 'sales');

#Display the employees who are working in “New York”
select employeeid from employee where departmentid in (select departmentid from department where locationid in (select locationid from location where regional_group='new york'));

#Display the employees who are working as “Clerk”
select employeeid from employee where jobid in (select jobid from job where name='function');

#Find out no.of employees working in “Sales” department
select count(employeeid) from employee where departmentid in (select departmentid from department where name='sales');

#Update the employees salaries, who are working as Clerk on the basis of 10%
update employee set salary=salary + salary*10/100 from employee where jobid in (select jobid from job where function='clerk');

#Delete the employees who are working in accounting department
delete from employee where departmentid in (select departmentid from department where name='accounting');

#display the second highest salary drwaing employee detail
select max(salary) from employee where salary < (select max(salary) from employee);

#List out the employees who earn more than every employee in department 30
select employeeid from employee where salary > all(select max(salary) from employee where departmentid=30);

#List out the employees who earn more than the lowest salary in department 30
select employeeid from employee where salary > any(select min(salary) from employee where departmentid=30);

#Find out which department does not have any employees
select departmentid,name from department where departmentid not in (select departmentid from employee);

