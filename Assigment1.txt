
/*Create Database StudentManagementSystem
1.Create Table student
with attribute  StudentID (Primary Key)
Name
Age
Address

/*2.Create a table with named Feedback 

with attributes: ● FeedbackID (Primary Key) 

● StudentID (Foreign key) 

● Date 

● InstructorName 

● Feedback
Add 5 Records in table

Create Database StudentManagementSystem1;
Query OK, 1 row affected (0.02 sec)

mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| aggregation              |
| asmita                   |
| bank                     |
| customer                 |
| e_commerce               |
| ecom                     |
| ecommerce                |
| energy_db                |
| information_schema       |
| joins                    |
| max                      |
| mysql                    |
| performance_schema       |
| sakila                   |
| storepro                 |
| student_management       |
| studentmanagementsystem  |
| studentmanagementsystem1 |
| sys                      |
| world                    |
+--------------------------+
20 rows in set (0.00 sec)

mysql> use studentmanagementsystem1;
Database changed

mysql>  create table student(student_id varchar(10) not null primary key,name varchar(100) not null,age int not null,address varchar(100) not null);
Query OK, 0 rows affected (0.05 sec)

mysql> desc student;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| student_id | varchar(10)  | NO   | PRI | NULL    |       |
| name       | varchar(100) | NO   |     | NULL    |       |
| age        | int          | NO   |     | NULL    |       |
| address    | varchar(100) | NO   |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert into student(student_id,name,age,address)values('s101','kinjal',19,'mithagar road'),('s102','divya',25,'campus mulund'),('s103','isha',22,'colony west'),('s104','unnati',18,'udwada gujarat'),('s105','riya',21,'thane west');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+------------+--------+-----+----------------+
| student_id | name   | age | address        |
+------------+--------+-----+----------------+
| s101       | kinjal |  19 | mithagar road  |
| s102       | divya  |  25 | campus mulund  |
| s103       | isha   |  22 | colony west    |
| s104       | unnati |  18 | udwada gujarat |
| s105       | riya   |  21 | thane west     |
+------------+--------+-----+----------------+
5 rows in set (0.00 sec)

/*
mysql> create table Feedback(feedback_id varchar(100) Not NULL primary key,student_id varchar(100) Not NULL,date datetime Not NULL,Instructorname varchar(100) Not NULL,feedback varchar(100) Not NULL);
Query OK, 0 rows affected (0.04 sec)

mysql> desc ffedback;
ERROR 1146 (42S02): Table 'studentmanagementsystem1.ffedback' doesn't exist
mysql> desc feedback;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| feedback_id    | varchar(100) | NO   | PRI | NULL    |       |
| student_id     | varchar(100) | NO   |     | NULL    |       |
| date           | datetime     | NO   |     | NULL    |       |
| Instructorname | varchar(100) | NO   |     | NULL    |       |
| feedback       | varchar(100) | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> insert into feedback(feedback_id,student_id,date,instructorname,feedback)values(101,'s101','2026-06-01','Mr mehta','good performance in class'),(102,'s102','2026-06-02','Mr patel','needs improvement in assignments'),(103,'s103','2026-06-03','Mrs joshi','very punctual and hardworking'),(104,'s104','2026-06-04','Mrs kadam','good understanding'),(105,'s105','2026-06-05','Mr desai','good performance');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from feedback;
+-------------+------------+---------------------+----------------+----------------------------------+
| feedback_id | student_id | date                | Instructorname | feedback                         |
+-------------+------------+---------------------+----------------+----------------------------------+
| 101         | s101       | 2026-06-01 00:00:00 | Mr mehta       | good performance in class        |
| 102         | s102       | 2026-06-02 00:00:00 | Mr patel       | needs improvement in assignments |
| 103         | s103       | 2026-06-03 00:00:00 | Mrs joshi      | very punctual and hardworking    |
| 104         | s104       | 2026-06-04 00:00:00 | Mrs kadam      | good understanding               |
| 105         | s105       | 2026-06-05 00:00:00 | Mr desai       | good performance                 |
+-------------+------------+---------------------+----------------+----------------------------------+
5 rows in set (0.00 sec)

mysql>