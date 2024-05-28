#list out the employee id , last name in ascending order based on the employee id
select employeeid, last_name from employee order by employeeId;

#list out the employee id , last name in descending order based on the salary
select employeeid, last_name from employee order by salary desc;

#list out the employee details according to their department id in descending order
select * from employee order by departmentid;

#how many employees who are working in different department wise in the organization
select count(employeeid) , departmentId from employee group by departmentId;

#list out the department wise maximum salary, minimum salary, average salary of the employees
select max(salary), min(salary), avg(salary), departmentId from employee group by departmentid;

#list out the job wise maximum salary, minumum salary, average salary of the employees
select max(salary), min(salary), avg(salary), jobId from employee group by jobid;

#list out the departmen id having atleast 4 employees
select departmentid, count(employeeid) from employee having count(employeeId)>=4 group by departmentid;

