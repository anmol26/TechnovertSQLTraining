--1. Select firstname, lastname, title, age, salary for everyone in your employee table. select * from [TechnovertSQLTraining].[dbo].[Employee];--2. Select firstname, age and salary for everyone in your employee table.select firstName, Age, Salary from [TechnovertSQLTraining].[dbo].[Employee];--3. Selct firstname and display as 'Name' for everyone in your employee tableselect firstName as 'Name' from [TechnovertSQLTraining].[dbo].[Employee];--4. Select firstname and lastname as 'Name' for everyone. Use " " (space) to separate firstname and last.select concat_ws(' ',firstname,lastname) as 'Name' from [TechnovertSQLTraining].[dbo].[Employee];--5. Select all columns for everyone with a salary over 38000select * from [TechnovertSQLTraining].[dbo].[Employee] where salary>38000;--6. Select first and last names for everyone that's under 24 years old. select firstname, lastname from [TechnovertSQLTraining].[dbo].[Employee] where age<24;--7. Select first name, last name, and salary for anyone with "Programmer" in their title. select firstname, lastname, salary from [TechnovertSQLTraining].[dbo].[Employee] where title = 'Programmer' ;--8. Select all columns for everyone whose last name contains "O". select * from [TechnovertSQLTraining].[dbo].[Employee] where lastname like '%o%' ;--9. Select the lastname for everyone whose first name equals "Kelly". select lastname from [TechnovertSQLTraining].[dbo].[Employee] where firstname = 'Kelly' ;--10. Select all columns for everyone whose last name ends in "Moore". select * from [TechnovertSQLTraining].[dbo].[Employee] where lastname like '%Moore' ;--11. Select all columns for everyone who are 35 and aboveselect * from [TechnovertSQLTraining].[dbo].[Employee] where age>=35 ;--12. Select firstname ,lastname,age and salary of everyone whose age is above 24 and below 43.select firstname, lastname, age, salary from [TechnovertSQLTraining].[dbo].[Employee] where age > 24 and age < 43 ;--13. Select firstname, title and lastname whose age is in the range 28 and 62 and salary greater than 31250select firstname, title, lastname from [TechnovertSQLTraining].[dbo].[Employee] where age between 28 and 62 and salary>31250 ;--14. Select all columns for everyone whose age is not more than 48 and salary not less than 21520select * from [TechnovertSQLTraining].[dbo].[Employee] where age<=48 and salary>=21520;--15. Select firstname and age of everyone whose firstname starts with "John" and salary in the range 25000 and 35000select firstname, age from [TechnovertSQLTraining].[dbo].[Employee] where firstname like 'John%' and salary between 25000 and 35000;--16. Select all columns for everyone by their ages in descending order.select * from [TechnovertSQLTraining].[dbo].[Employee] order by age desc;--17. Select all columns for everyone by their ages in ascending order.select * from [TechnovertSQLTraining].[dbo].[Employee] order by age;--18. Select all columns for everyone by their salaries in descending order.
select * from [TechnovertSQLTraining].[dbo].[Employee] order by salary desc;
--19. Select all columns for everyone by their salaries in ascending order.
select * from [TechnovertSQLTraining].[dbo].[Employee] order by salary;
--20. Select all columns for everyone by their salaries in ascending order whose age not less than 17.
select * from [TechnovertSQLTraining].[dbo].[Employee] where age>=17 order by salary ;
--21. Select all columns for everyone by their salaries in descending order whose age not more than 34.
select * from [TechnovertSQLTraining].[dbo].[Employee] where age<=34 order by salary desc ;
--22. Select all columns for everyone by their length of firstname in ascending order.
select * from [TechnovertSQLTraining].[dbo].[Employee] order by len(FirstName) asc;
--23. Select the number of employees whose age is above 45
select count(*) from [TechnovertSQLTraining].[dbo].[Employee] where age>45;

--24. Show the results by adding 5 to ages and removing 250 from salaries of all employees
select firstname, lastname, title,(age+5) as Age, (salary-250) as Salary from [TechnovertSQLTraining].[dbo].[Employee];

--25. Select the number of employees whose lastname ends with "re" or "ri" or "ks"
select count(*) from [TechnovertSQLTraining].[dbo].[Employee] where lastname like '%re' or  lastname like '%ri' or  lastname like '%ks';

--26. Select the average salary of all your employees
select avg(salary) from [TechnovertSQLTraining].[dbo].[Employee];

--27. Select the average salary of Freshers
select avg(salary) from [TechnovertSQLTraining].[dbo].[Employee] where title= 'Fresher';

--28. Select the average age of Programmers
select avg(age) from [TechnovertSQLTraining].[dbo].[Employee] where title= 'Programmer';

--29. Select the average salary of employees whose age is not less than 35 and not more than 50
select avg(salary) from [TechnovertSQLTraining].[dbo].[Employee] where age between 35 and 50;

--30. Select the number of Freshers
select count(*) from [TechnovertSQLTraining].[dbo].[Employee] where title= 'Fresher';

--31. What percentage of programmers constitute your employees
select (count(*)*100/(select count(*) from [TechnovertSQLTraining].[dbo].[Employee])) as PersentageOfProgrammer from [TechnovertSQLTraining].[dbo].[Employee] where title='Programmer';

--32. What is the combined salary that you need to pay to the employees whose age is not less than 40
select sum(salary) from [TechnovertSQLTraining].[dbo].[Employee] where age>=40;

--33. What is the combined salary that you need to pay to all the Freshers and Programmers for 1 month
select sum(salary) from [TechnovertSQLTraining].[dbo].[Employee] where title='Fresher' or title='Programmer';

--34. What is the combined salary that you need to pay to all the Freshers whose age is greater than 27 for 3years
select sum(salary)*36 from [TechnovertSQLTraining].[dbo].[Employee] where title='Fresher' and age>27;

--35. Select the eldest employee's firstname, lastname and age whose salary is less than 35000
select firstname, lastname, age from [TechnovertSQLTraining].[dbo].[Employee] where salary< 35000 order by age desc
offset 0 rows fetch first 1 row only;
	--another solution
	select top 1 firstname, lastname, age from [TechnovertSQLTraining].[dbo].[Employee] where salary< 35000 order by age desc;

--36. Who is the youngest General Manager
select top 1 firstname, lastname, age from [TechnovertSQLTraining].[dbo].[Employee] where title= 'General Manager' order by age asc;

--37. Select the eldest fresher whose salary is less than 35000
select top 1 * from [TechnovertSQLTraining].[dbo].[Employee] where salary<35000 and title='Fresher' order by age desc;

--38. Select firstname and age of everyone whose firstname starts with "John" or "Michael" and salary in the range 17000 and 26000
select firstname, age  from [TechnovertSQLTraining].[dbo].[Employee] where firstname like 'John%' or firstname like 'Michael' and salary between 17000 and 26000;

--39. How many employees are having each unique title. Select the title and display the number of employees present in ascending order
select title, count(title) as NoOfEmployee from [TechnovertSQLTraining].[dbo].[Employee] group by title order by count(title) asc; 

--40. What is the average salary of each unique title of the employees. Select the title and display the average salary of employees in each
select title, avg(salary) as avgSalaryOfEmployee from [TechnovertSQLTraining].[dbo].[Employee] group by title; 

--41. What is the average salary of employees excluding Freshers
select avg(salary) as avgSalaryOfEmployee from [TechnovertSQLTraining].[dbo].[Employee] where title<>'Fresher'; 

--42. What is the average age of employees of each unique title.
select title, avg(age) as AvgAgeOfEmployee from [TechnovertSQLTraining].[dbo].[Employee] group by title; 

--43. In the age range of 25 to 40 get the number of employees under each unique title.
select title, count(*) as NoOfEmployee from [TechnovertSQLTraining].[dbo].[Employee] where age between 25 and 40 group by title; 

--44. Show the average salary of each unique title of employees only if the average salary is not less than 25000
select title, avg(salary) as AvgSalaryOfEmployee from [TechnovertSQLTraining].[dbo].[Employee] group by title having avg(salary)>=25000; 

--45. Show the sum of ages of each unique title of employee only if the sum of age is greater than 30
select title, sum(age) as SumOfAgeOfEmployees from [TechnovertSQLTraining].[dbo].[Employee] group by title having sum(age)>30; 

--46. Lisa Ray just got married to Michael Moore. She has requested that her last name be updated to Moore.
update [TechnovertSQLTraining].[dbo].[Employee] set lastname='Moore' where firstname='Lisa' and lastname='Ray';

--47. Ginger Finger's birthday is today, add 1 to his age and a bonus of 5000
update [TechnovertSQLTraining].[dbo].[Employee] set age=age+1, salary=salary+5000 where firstname='Ginger' and lastname='finger';

--48. All 'Programmer's are now called "Engineer"s. Update all titles accordingly.
update [TechnovertSQLTraining].[dbo].[Employee] set title='Engineer' where title='Programmer';

--49. Everyone whose making under 30000 are to receive a 3500 bonus.
update [TechnovertSQLTraining].[dbo].[Employee] set salary= salary+3500 where salary<30000;

--50. Everyone whose making over 35500 are to be deducted 15% of their salaries
update [TechnovertSQLTraining].[dbo].[Employee] set salary= salary- 0.15*(salary) where salary>35500;