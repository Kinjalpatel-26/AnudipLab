/* Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order



mysql> create database student_information;
Query OK, 1 row affected (0.01 sec)

mysql> use student_information;
Database changed

mysql> create table student(stud_id int primary key,firstname varchar(20) not null,lastname varchar(20) not null,phoneno int not null,address varchar(30) not null);
Query OK, 0 rows affected (0.10 sec)

mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| stud_id   | int         | NO   | PRI | NULL    |       |
| firstname | varchar(20) | NO   |     | NULL    |       |
| lastname  | varchar(20) | NO   |     | NULL    |       |
| phoneno   | int         | NO   |     | NULL    |       |
| address   | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.02 sec)

mysql> insert into student values(1,'kinja','patel',123457892,'mithagar road'),(2,'hitesh','mitna',123456762,'mulund'),(3,'diya','joshi',123346789,'thane'),(4,'divya','shah',233456789,'ghatkopar'),(5,'unnati','patel',123345672,'gujarat');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+---------+-----------+----------+-----------+---------------+
| stud_id | firstname | lastname | phoneno   | address       |
+---------+-----------+----------+-----------+---------------+
|       1 | kinja     | patel    | 123457892 | mithagar road |
|       2 | hitesh    | mitna    | 123456762 | mulund        |
|       3 | diya      | joshi    | 123346789 | thane         |
|       4 | divya     | shah     | 233456789 | ghatkopar     |
|       5 | unnati    | patel    | 123345672 | gujarat       |
+---------+-----------+----------+-----------+---------------+
5 rows in set (0.00 sec)

mysql> select * from student order by lastname asc;
+---------+-----------+----------+-----------+---------------+
| stud_id | firstname | lastname | phoneno   | address       |
+---------+-----------+----------+-----------+---------------+
|       3 | diya      | joshi    | 123346789 | thane         |
|       2 | hitesh    | mitna    | 123456762 | mulund        |
|       1 | kinja     | patel    | 123457892 | mithagar road |
|       5 | unnati    | patel    | 123345672 | gujarat       |
|       4 | divya     | shah     | 233456789 | ghatkopar     |
+---------+-----------+----------+-----------+---------------+
5 rows in set (0.00 sec)

mysql>