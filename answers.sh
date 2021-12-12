### Basic Queries
1. SELECT * from students

2.select * from students where Age > 30

3.select * from students where Gender = 'F' AND age =30

4.SELECT students.name ,students.Points  from students where students.name= 'Alex';

5.INSERT INTO students VALUES (7 ,'Khalid' , 21 , 'M' , 500)

6.UPDATE students SET Points = 550 WHERE students.name="Basma"

7.UPDATE students SET Points = 150 WHERE students.name="Alex"
###########################################

### Creating Table

#1- Create 
CREATE TABLE graduates
(
	ID Integer NOT NULL  Primary key AUTOINCREMENT,
	Name Text  NOT NULL  Unique,
	Age INTEGER,
	Gender Text,
	Points INTEGER,
	Graduation date
)
#2- copy from student to graduates
INSERT INTO graduates (ID,Name, Age, Gender, Points)
SELECT ID , Name , Age , Gender ,Points
FROM students  WHERE students.Name="Layal"
#3- Add Graduation Date 
UPDATE graduates
SET Graduation = '2018/09/08'
WHERE id= 4;
#4- delete Layal from Students
delete from students  where name = 'Layal'
###########################################
### Joins 
#1- produce table 
SELECT employees.Name , employees.Company , companies.Date 
FROM employees 
JOIN companies 
WHERE employees.ID=companies.ID
#2-Date before 2000
SELECT employees.Name , companies.Date
FROM employees 
JOIN companies
WHERE employees.ID=companies.ID AND companies.Date <2000
#3- Graphuc Designer
SELECT companies.Name  ,employees.Role 
FROM employees 
JOIN companies
WHERE employees.ID=companies.ID AND employees.Role='Graphic Designer'