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

#List out the no.of employees joined in every month in ascending order
select datename(mm, hiredate) month, count(employeeid) from employee group by datename(mm,hiredate);

#List out the no.of employees for each month and year, in the ascending order based on the year, month
select datename(mm,hiredate) month, datepart(yyyy,hiredate) year, count(employeeid) from employee group by datename(mm,hiredate), datepart(yyyy,hiredate);

#How many employees in January month
select count(employeeid) from employee where datename(mm,hiredate) = 'january' group by datename(mm,hiredate);

#How many employees who are joined in January or September month
select count(employeeid) from employee where datename(mm,hiredate) in ('january', 'september');

#How many employees who are joined in 1985
select count(employeeid), datepart(yyyy,hiredate) year from employee where datepart(yyyy,hiredate) = 1985 group by datepart(yyyy,hiredate);

#How many employees who are joined in March 1985
select count(employeeid), datepart(yyyy,hiredate) year, datename(mm,hiredate) month from employee where datepart(yyyy,hiredate) = 1985 and datename(mm,hiredate)='march' group by datepart(yyyy,hiredate), datename(mm,hiredate);

#How many employees joined each month in 1985
select count(employeeid), datepart(yyyy,hiredate) year, datename(mm,hiredate) month from employee where datepart(yyyy,hiredate) = 1985 group by datepart(yyyy,hiredate), datename(mm,hiredate);

#Which is the department id, having greater than or equal to 3 employees joined in April 1985
select departmentid from employee where datename(mm,hiredate)='april' and datepart(yyyy,hiredate) = 1985 group by departmentid having count(employeeid)>=3;
