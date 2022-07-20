








 my sql -u root -p

 -- crud operations

 -- Show databases:
 -- SHOW DATABASES;

 Database
 -- create  Database






 -- Show tables /LIST tables
 SHOW TABLES;

 -- create table
-- VARCHAR(M) 1 AND 255
 CREATE TABLES course list (
    course_id INT NOT NULL AUTO_INCREMENT,
    course_title VARCHAR(50) NOT NULL,
    course_author VARCHAR(40) NOT NULL,
    course_date DATE,
    PRIMARY KEY(course_id)

 )


 -- create employe table
 CREATE TABLES employe LIST(
     employe_id INT NOT NULL AUTO_INCREMENT,
    employe_name VARCHAR(50) NOT NULL,
    employe_author VARCHAR(40) NOT NULL,
    employe_date DATE,
    employe KEY(employe_id)

 );
 -- drop table
 DROP TABLE course_list;
 
 --insert one record data into table

 INESERT INTO course_list (course_name, course_author,course_date) VALUES ("Java","vaibhav",NOW());

--insert multiple record into table

INSERT INTO course_list(course_title,course_author,course_date)
VALUES
("MySQL","Vaibhav",NOW()),
("Angular","Vaibhav",NOW()),
("API","Vaibhav",NOW()),

-- Select data from table
select *from course_list;
select course_title from course_list;

-- update records in the table

update course_list SET course_title="API Testing" WHERE course_id=4;

--Delete query

DELETE FROM course_list WHERE course_id=4;





ALTER TABLE course_list
ADD
course_score VARCHAR(100) NOT NULL;

-- add multiple coloums
ALTER TABLE course_list
ADD course_score VARCHAR(100) NOT NULL,
ADD course_score_two VARCHAR(100) NOT NULL;

-- describe table
describe table_name;

--Modify coloum type
ALTER TABLE course_list
MODIFY course_score_two VARCHAR(50) NOT NULL,
MODIFY course_title VARCHAR(100) NOT NULL;

--Rename coloum name
ALTER TABLE course_list
CHANGE COLOUMN old_coloumn_name new_column_name INT NOT NULL,


ALTER TABLE course_list
CHANGE COLUMN course_score_two course_status INT NOT NULL;

--delete column
ALTER TABLE course_list
DROP c


-- relationship
--FOREIGN KEY relationships

CREATE TABLE Orders(
    OrderID INT NOT NULL,
    OrderNumber INT NOT NULL,
    PersonID int,
    PRIMARY KEY(OrderID),
    CONSTRAINT FK_PersonOrder FOREIGN KEY(PersonID) REFERENCES Persons(PersonID)
);



-- CREATE TABLE Project(
--     ProjectID INT NOT NULL,
--     ProjectNumber INT NOT NULL,
--     EmployeID int,
--     PRIMARY KEY(ProjectID),
--     FOREIGN KEY(EmployeID) REFERENCES Employe(EmployeID)
-- )

--ALTER FOREIGN KEY
ALTER TABLE Orders
 CONSTRAINT FK_PersonOrder FOREIGN KEY(PersonID) REFERENCES Persons(PersonID)

ALTER TABLE Project
 CONSTRAINT FK_EmployeProject FOREIGN KEY(EmployeID) REFERENCES Employe(EmployeID)

--Drop FOREIGN KEY
ALTER TABLE Orders DROP CONSTRAINT FK_PersonOrder;

--importing existing database
-- inside mysql terminal

--Select field_name FROM tablename

Select lastName FROM employees;
Select firstName,lastName,jobTitle FROM employees;

Select *FROM employees;

-- select

Select 1+1;



SELECT CONCAT("VAIBHAV",' ',"PANDEY") AS fullname;


--Sort queries

SELECT
      field_names
      FROM
          table_name
ORDER BY 


SELECT
contactLastName,
contactFirstName

FROM
customers
ORDER BY
contactLastName DESC,
contactFirstName ASC;

--orderdetailTable

SELECT
orderNumber,
orderLineNumber,
quantityOrdered *priceEach DESC;

SELECT
 OrderNumber,
 orderLineNumber,
 quantityOrdered *priceEach AS subtotal
 FROM
 orderdetails
 ORDER BY
 subtotal DESC;

--  status
--       In Progress
--       on Hold
--       Canceled
--       Resolved
--       Disputed
--       Shipped


SELECT 
      OrderNumber, status
FROM
    Orders
ORDER BY FIELD( status,
       "In Progress",
       "on Hold",
       "Cancelled",
       "Resolved",
       "Disputed",
       "Shipped");

SELECT
     firstName,
     lastName,
     reportsTo
FROM
    employees
ORDER BY reportsTo DESC          


--FORM -> WHERE ->SELECT -> ORDER BY

SELECT
     firstName,
     lastName,
     jobTitle
FROM
    employees
WHERE
    jobTitle="Sale rep"
----

SELECT
     firstName,
     lastName,
     jobTitle
FROM
    employees
WHERE
    jobTitle="Sale rep" AND
    officeCode=1;
----
SELECT
     firstName,
     lastName,
     jobTitle
FROM
    employees
WHERE
    jobTitle="Sale rep" OR
    officeCode=1;
-----

SELECT
     firstName,
     lastName,
     jobTitle,
     officeCode
FROM
    employees
WHERE
    jobTitle="Sale rep" OR
    officeCode=1;
ORDER BY
       officeCode,
       jobTitle;
----------

SELECT
     firstName,
     lastName,
     jobTitle,
     officeCode
FROM
    employees
WHERE
     officeCode BETWEEN 1 AND 3
ORDER BY officeCode;
---------

------ LIKE clause
   
   SELECT
       firstName,
       lastName
FROM
    employees
WHERE
      lastName LIKE '%son'
      ORDER BY firstName;

      "Tho%"
      "%son"
-------

-----IN operator

SELECT
     firstName
     lastName
     officeCode
FROM
    employees
WHERE
     officeCode IN(1,2,3)
              










        

        