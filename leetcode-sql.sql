#Recyclable and Low fat products

SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';

#Find customer referee

SELECT name FROM Customer WHERE referee_id IS NULL OR referee_id != 2

#Big countries

SELECT name, population, area from World WHERE area >= 3000000 OR population >= 25000000 

#Article views 1

SELECT DISTINCT author_id as id from Views WHERE author_id = viewer_id order by author_id

#Invalid tweets

SELECT tweet_id from Tweets WHERE LENGTH(Content)>15

#Replace employee id with the unique identifier
SELECT e.name, eu.unique_id from Employees e Left JOIN EmployeeUNI as eu ON e.id = eu.id;

#Product sales analysis-1
SELECT p.product_name, s.year, s.price FROM Sales s inner join Product p ON s.product_id = p.product_id;

#Customer who visited but did not made any transactions
Select distinct v.customer_id, count(v.visit_id) as count_no_trans from Visits v left join Transactions t on v.visit_id = t.visit_id where t.transaction_id is null group by v.customer_id; 

#Rising temperature
select w1.id from Weather w1 inner join Weather w2 on datediff(w1.recordDate, w2.recordDate)=1 where w1.temperature > w2.temperature;

#Employee bonus
select e.name, b.bonus from Employee e left join Bonus b on e.empId=b.empId where b.bonus<1000 or b.bonus is null;

#Average time of process per machine
select a.machine_id , round(avg(b.timestamp-a.timestamp),3) as processing_time from Activity a, Activity b where a.machine_id=b.machine_id and a.process_id=b.process_id and a.activity_type="start" and b.activity_type="end" group by machine_id;

#Students and examination
select s.student_id, s.student_name, su.subject_name, count(e.student_id) as attended_exams from Students s cross join Subjects su left join Examinations e on e.student_id=s.student_id and su.subject_name = e.subject_name group by s.student_id, s.student_name, su.subject_name  order by s.student_id,su.subject_name;
Manager with at least 5 direct reports

#Confirmation rate
select s.user_id, ifnull(round(sum(c.action = "confirmed")/count(c.action),2),0) as confirmation_rate from Signups s left join Confirmations c on s.user_id=c.user_id group by s.user_id;

#Not boring movies
select * from Cinema where mod(id,2)!=0 and description!="boring" order by rating desc;







