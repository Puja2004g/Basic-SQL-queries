#creating tables -
create table location(locationID number(3) primary key, regional_group varchar(20));
create table department(departmentId number(2) primary key, name varchar(20), location_id number(3));
create table job(jobId number(3) primary key, function varchar(20));
create table employee(employeeId number(4) primary key, last_name varchar(20), first_name varchar(20), middle_name varchar(1), jobId number(3), managerId number(4), hiredate date, salary number(5), comm number(5), departmentId number(2));

#inserting values into tables-
insert into location values(122,'new york');
insert into location values(123, 'dallas');
insert into location values(124, 'chicago');
insert into location values(125, 'boston');

insert into department values(10,'accounting',122);
insert into department values(20, 'research', 124);
insert into department values(30,'sales',123);
insert into department values(40,'operations', 167);


insert into job values(667, 'clerk');
insert into job values(668,'staff');
insert into job values(669, 'analyst');
insert into job values(670,'salesperson');
insert into job values(671,'manager');
insert into job values(672,'president');

insert into employee values(7369,'smith','john','q',667,7902,'17dec-84',800,null,20);
insert into employee values(7499,'allen','kevin','j',670,7698,'20-feb-85',1600,300,30);
insert into employee values(7505,'doyle','jean','k',671,7839,'04-apr-85',2850,null,30);
insert into employee values(7506,'dennis','lynn','s',671,7839,'15-may-85',2750,null,30);
insert into employee values(7507,'baker','leslie','d',671,7839,'10-jun-85',2200,null,40);
insert into employee values(7521,'wark','cynthia','d',670,7698,'22-feb-85',1250,500,30);


