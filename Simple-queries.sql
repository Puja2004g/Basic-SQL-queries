#List all the employee details
select * from employee;

#List all the department details
select * from department;

#List all the job details
select * from job;

#List all the location details
select * from locations;

#list out first name, last name, salary, commissionn for all employees
select first_name, last_name,salary, comm from employee;

#list out employee id, last name, department id for all employees and rename employee id as 'id of the employee', last name as 'name of the employee', department id as 'department id'
select employeeId as "id of the employee", last_name as "name of the employee", departmentId as 'department id' from employee;

#list out the employees annual salary with their names only
select salary*12 as "salary", last_name as 'name' from employee;
