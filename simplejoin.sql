#list our employees with their department names
select a.employeeid, a.last_name, b.name from employee a inner join department b on a.departmentid = b.departmentid;

#display employees with their designations(jobs)
select e.employeeid, e.lastname, j.function from employee e inner join job j on e.jobid = j.jobid;

#Display the employees with their department name and regional groups
select e.employeeid, e.lastname, d.name, l.regional_group from employee e inner join department d on e.departmentid = d.departmentid inner join location l on l.locationid=d.locationid;

#How many employees who are working in different departments and display with department name
select count(e.employeeid) as 'no. of employees', d.name from employee e inner join department d on e.departmentid=d.departmentid group by d.name;

#How many employees who are working in sales department
select count(e.employeeid) as 'no. of emoloyees' from employee e inner join department d on e.departmentid = d.departmentid group by d.name having d.name='sales';

#Which is the department having greater than or equal to 5 employees and display the department names in ascending order
select d.name, count(e.employeeid) from employee e inner join department d on e.departmentid = d.departmentid group by d.name having count(e.employeeid) > 5;

#How many jobs in the organization with designations
select count(j.function) from employee e inner join job j on e.jobid = j.jobid group by j.function;

#How many employees working in “New York”
select count(e.employeeid) from employee e inner join department d on e.departmentid = d.departmentid inner join location l on d.locationid = l.locationid group by l.regional_group having l.regional_group = 'new york';
