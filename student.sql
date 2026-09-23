mysql> select * from student;
+------+-------------------+----------+------+--------------+--------------+-------------------+------------------+--------+
| id   | name              | city     | age  | created_time | created_date | Father_name       | mother_name      | graede |
+------+-------------------+----------+------+--------------+--------------+-------------------+------------------+--------+
|    1 | alok              | bbsr     |   24 | 23:55:45     | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      |
|    2 | sai               | cuttack  |   22 | 23:55:45     | 2026-09-17   | maydhare padhi    | jayanti padhi    | A      |
|    4 | satyabrata        | balesore |   26 | 23:55:45     | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      |
|    5 | satyabrata parida | balesore |   26 | 23:55:45     | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      |
|    6 | sainath parida    | bbsr     |   26 | 23:55:45     | 2026-09-17   | sankar sau        | madhumita bahara | B      |
|    3 | satya             | bbsr     |   23 | 23:55:45     | 2026-09-17   | sibaji sau        | madhu padhi      | B      |
+------+-------------------+----------+------+--------------+--------------+-------------------+------------------+--------+
6 rows in set (0.00 sec)

mysql> notee;

mysql> select * from student limit 2;
+------+------+---------+------+--------------+----------------+---------------+--------+------+
| id   | name | city    | age  | created_date | Father_name    | mother_name   | graede | dob  |
+------+------+---------+------+--------------+----------------+---------------+--------+------+
|    1 | alok | bbsr    |   28 | 2026-09-17   | ratnakar padhi | jayanti padhi | A      | NULL |
|    2 | sai  | cuttack |   22 | 2026-09-17   | maydhare padhi | jayanti padhi | A      | NULL |
+------+------+---------+------+--------------+----------------+---------------+--------+------+
2 rows in set (0.00 sec)

mysql> select * from student limit 2,4;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+
4 rows in set (0.00 sec)

mysql> select count(*) from student
    -> ;
+----------+
| count(*) |
+----------+
|        6 |
+----------+
1 row in set (0.00 sec)

mysql> select count(age) from student;
+------------+
| count(age) |
+------------+
|          6 |
+------------+
1 row in set (0.00 sec)

mysql> select count(*) as total_student from student;
+---------------+
| total_student |
+---------------+
|             6 |
+---------------+
1 row in set (0.00 sec)

mysql> select count(*) as same_age from student where age = 26;
+----------+
| same_age |
+----------+
|        3 |
+----------+
1 row in set (0.00 sec)

mysql> select count(*) as how_many_student from student where city = 'bbsr';
+------------------+
| how_many_student |
+------------------+
|                3 |
+------------------+
1 row in set (0.00 sec)

mysql> update student set age = 28 where id = 1;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 1  Changed: 0  Warnings: 0

mysql> select * from student ;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |
|    2 | sai               | cuttack  |   22 | 2026-09-17   | maydhare padhi    | jayanti padhi    | A      | NULL |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+
6 rows in set (0.00 sec)

mysql> select * from student order by age asc;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+
|    2 | sai               | cuttack  |   22 | 2026-09-17   | maydhare padhi    | jayanti padhi    | A      | NULL |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+
6 rows in set (0.00 sec)

mysql> select * from student order by id asc;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |
|    2 | sai               | cuttack  |   22 | 2026-09-17   | maydhare padhi    | jayanti padhi    | A      | NULL |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+
6 rows in set (0.00 sec)

mysql> select * from student order by id desc;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL |
|    2 | sai               | cuttack  |   22 | 2026-09-17   | maydhare padhi    | jayanti padhi    | A      | NULL |
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+
6 rows in set (0.00 sec)

mysql> select city from student;
+----------+
| city     |
+----------+
| bbsr     |
| cuttack  |
| balesore |
| balesore |
| bbsr     |
| bbsr     |
+----------+
6 rows in set (0.00 sec)

mysql> select distinct city from student;
+----------+
| city     |
+----------+
| bbsr     |
| cuttack  |
| balesore |
+----------+
3 rows in set (0.00 sec)

mysql> notee;
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| college            |
| employee_01        |
| information_schema |
| mysql              |
| performance_schema |
| shop               |
| sys                |
+--------------------+
7 rows in set (0.00 sec)

mysql> use college;
Database changed
mysql> select * from student;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   87 |
|    2 | sai               | cuttack  |   22 | 2026-09-17   | maydhare padhi    | jayanti padhi    | A      | NULL |   90 |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |   98 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   78 |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |   90 |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL |   89 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
6 rows in set (0.00 sec)

mysql> select Avg(age)  from student;
+----------+
| Avg(age) |
+----------+
|  25.1667 |
+----------+
1 row in set (0.00 sec)

mysql> select Avg(age) as avarage_age from student;
+-------------+
| avarage_age |
+-------------+
|     25.1667 |
+-------------+
1 row in set (0.00 sec)

mysql> select Round(Avg(age),2) as avarage_age from student;
+-------------+
| avarage_age |
+-------------+
|       25.17 |
+-------------+
1 row in set (0.00 sec)

mysql> select sum(age) as avarage_age from student;
+-------------+
| avarage_age |
+-------------+
|         151 |
+-------------+
1 row in set (0.00 sec)

mysql> select min(age) as avarage_age from student;
+-------------+
| avarage_age |
+-------------+
|          22 |
+-------------+
1 row in set (0.00 sec)

mysql> select max(age) as avarage_age from student;
+-------------+
| avarage_age |
+-------------+
|          28 |
+-------------+
1 row in set (0.00 sec)

mysql> select max(id) as avarage_age from student;
+-------------+
| avarage_age |
+-------------+
|           6 |
+-------------+
1 row in set (0.00 sec)

mysql> select max(id) as max_id from student;
+--------+
| max_id |
+--------+
|      6 |
+--------+
1 row in set (0.00 sec)

mysql> select min(id) as min_id from student;
+--------+
| min_id |
+--------+
|      1 |
+--------+
1 row in set (0.00 sec)

mysql> select sum(id) as sum_id from student;
+--------+
| sum_id |
+--------+
|     21 |
+--------+
1 row in set (0.00 sec)

mysql> select Avg(id) as Avarage_id ent;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ent' at line 1
mysql> select Avg(id) as Avarage_id from student;
+------------+
| Avarage_id |
+------------+
|     3.5000 |
+------------+
1 row in set (0.00 sec)

mysql> select round(Avg(id),2) as Avarage_id from student;
+------------+
| Avarage_id |
+------------+
|       3.50 |
+------------+
1 row in set (0.00 sec)

mysql> alter table student drop mark ;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *fropm student
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'fropm student' at line 1
mysql> select *from student ;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |
|    2 | sai               | cuttack  |   22 | 2026-09-17   | maydhare padhi    | jayanti padhi    | A      | NULL |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+
6 rows in set (0.00 sec)

mysql> alter table student add mark int ;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from student ;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL | NULL |
|    2 | sai               | cuttack  |   22 | 2026-09-17   | maydhare padhi    | jayanti padhi    | A      | NULL | NULL |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL | NULL |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL | NULL |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL | NULL |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL | NULL |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
6 rows in set (0.00 sec)

mysql> update student set mark=90 where id=1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from student ;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    2 | sai               | cuttack  |   22 | 2026-09-17   | maydhare padhi    | jayanti padhi    | A      | NULL | NULL |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL | NULL |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL | NULL |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL | NULL |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL | NULL |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
6 rows in set (0.00 sec)

mysql> update student set mark=92 where id=2;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from student ;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    2 | sai               | cuttack  |   22 | 2026-09-17   | maydhare padhi    | jayanti padhi    | A      | NULL |   92 |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL | NULL |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL | NULL |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL | NULL |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL | NULL |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
6 rows in set (0.00 sec)

mysql> update student set mark=78 where id=3;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from student ;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    2 | sai               | cuttack  |   22 | 2026-09-17   | maydhare padhi    | jayanti padhi    | A      | NULL |   92 |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL | NULL |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL | NULL |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL | NULL |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL |   78 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
6 rows in set (0.00 sec)

mysql> update student set mark=80 where id=4;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from student ;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    2 | sai               | cuttack  |   22 | 2026-09-17   | maydhare padhi    | jayanti padhi    | A      | NULL |   92 |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |   80 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL | NULL |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL | NULL |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL |   78 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
6 rows in set (0.00 sec)

mysql> update student set mark=791 where id=6;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update student set mark=75 where id=5;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from student ;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    2 | sai               | cuttack  |   22 | 2026-09-17   | maydhare padhi    | jayanti padhi    | A      | NULL |   92 |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |   80 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |  791 |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL |   78 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
6 rows in set (0.00 sec)

mysql> update student set mark=79 where id=6;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from student ;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    2 | sai               | cuttack  |   22 | 2026-09-17   | maydhare padhi    | jayanti padhi    | A      | NULL |   92 |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |   80 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |   79 |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL |   78 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
6 rows in set (0.00 sec)

mysql>  select * from student where age>21 and graede='B';
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |   80 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |   79 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
3 rows in set (0.00 sec)

mysql>  select * from student where age>21 or graede='B';
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    2 | sai               | cuttack  |   22 | 2026-09-17   | maydhare padhi    | jayanti padhi    | A      | NULL |   92 |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |   80 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |   79 |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL |   78 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
6 rows in set (0.00 sec)

mysql> select * from student where not age<21 ;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    2 | sai               | cuttack  |   22 | 2026-09-17   | maydhare padhi    | jayanti padhi    | A      | NULL |   92 |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |   80 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |   79 |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL |   78 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
6 rows in set (0.00 sec)

mysql> select * from student where graede in ('a','b') ;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    2 | sai               | cuttack  |   22 | 2026-09-17   | maydhare padhi    | jayanti padhi    | A      | NULL |   92 |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |   80 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |   79 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
5 rows in set (0.00 sec)

mysql> select * from student where age between 21 nad 25;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'nad 25' at line 1
mysql> select * from student where age between 21 and 25;
+------+-------+---------+------+--------------+----------------+---------------+--------+------+------+
| id   | name  | city    | age  | created_date | Father_name    | mother_name   | graede | dob  | mark |
+------+-------+---------+------+--------------+----------------+---------------+--------+------+------+
|    2 | sai   | cuttack |   22 | 2026-09-17   | maydhare padhi | jayanti padhi | A      | NULL |   92 |
|    3 | satya | bbsr    |   23 | 2026-09-17   | sibaji sau     | madhu padhi   | NULL   | NULL |   78 |
+------+-------+---------+------+--------------+----------------+---------------+--------+------+------+
2 rows in set (0.00 sec)

mysql> select city,count(*) from student Group by city;
+----------+----------+
| city     | count(*) |
+----------+----------+
| bbsr     |        3 |
| cuttack  |        1 |
| balesore |        2 |
+----------+----------+
3 rows in set (0.00 sec)

mysql> select city from student;
+----------+
| city     |
+----------+
| bbsr     |
| cuttack  |
| balesore |
| balesore |
| bbsr     |
| bbsr     |
+----------+
6 rows in set (0.00 sec)

mysql> select distinct city from student;
+----------+
| city     |
+----------+
| bbsr     |
| cuttack  |
| balesore |
+----------+
3 rows in set (0.00 sec)

mysql> select city,count(*) as city_wise from student;
ERROR 1140 (42000): In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'college.student.city'; this is incompatible with sql_mode=only_full_group_by
mysql> select city,count(*) as city_wise from student ground by city;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'by city' at line 1
mysql> select city,count(*) as city_wise from student group by city;
+----------+-----------+
| city     | city_wise |
+----------+-----------+
| bbsr     |         3 |
| cuttack  |         1 |
| balesore |         2 |
+----------+-----------+
3 rows in set (0.00 sec)

mysql> select city,count(*) as city_wise ,(count(*)*100.0/(select count(*) from student)) as percentage from student group by city;
+----------+-----------+------------+
| city     | city_wise | percentage |
+----------+-----------+------------+
| bbsr     |         3 |   50.00000 |
| cuttack  |         1 |   16.66667 |
| balesore |         2 |   33.33333 |
+----------+-----------+------------+
3 rows in set (0.00 sec)

mysql> select city,count(*) as city_wise ,round(count(*)*100.0/(select count(*) from student)) as percentage from student group by city;
+----------+-----------+------------+
| city     | city_wise | percentage |
+----------+-----------+------------+
| bbsr     |         3 |         50 |
| cuttack  |         1 |         17 |
| balesore |         2 |         33 |
+----------+-----------+------------+
3 rows in set (0.00 sec)

mysql> select city,count(*) as city_wise ,round(count(*)*100.0/(select count(*) from student),2) as percentage from student group by city;
+----------+-----------+------------+
| city     | city_wise | percentage |
+----------+-----------+------------+
| bbsr     |         3 |      50.00 |
| cuttack  |         1 |      16.67 |
| balesore |         2 |      33.33 |
+----------+-----------+------------+
3 rows in set (0.00 sec)

mysql> select city,count(*) as city_wise ,round(count(*)*100.0/(select count(*) from student),1) as percentage from student group by city;
+----------+-----------+------------+
| city     | city_wise | percentage |
+----------+-----------+------------+
| bbsr     |         3 |       50.0 |
| cuttack  |         1 |       16.7 |
| balesore |         2 |       33.3 |
+----------+-----------+------------+
3 rows in set (0.00 sec)

mysql> select city,count(*) as city_wise ,round(count(*)*100.0/(select count(*) from student),1) as percentage,Avg(mark) from student group by city;
+----------+-----------+------------+-----------+
| city     | city_wise | percentage | Avg(mark) |
+----------+-----------+------------+-----------+
| bbsr     |         3 |       50.0 |   82.3333 |
| cuttack  |         1 |       16.7 |   92.0000 |
| balesore |         2 |       33.3 |   77.5000 |
+----------+-----------+------------+-----------+
3 rows in set (0.00 sec)

mysql> select city,count(*) as city_wise ,round(count(*)*100.0/(select count(*) from student),1) as percentage,round(Avg(mark)) from student group by city;
+----------+-----------+------------+------------------+
| city     | city_wise | percentage | round(Avg(mark)) |
+----------+-----------+------------+------------------+
| bbsr     |         3 |       50.0 |               82 |
| cuttack  |         1 |       16.7 |               92 |
| balesore |         2 |       33.3 |               78 |
+----------+-----------+------------+------------------+
3 rows in set (0.00 sec)

mysql> select * from student;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    2 | sai               | cuttack  |   22 | 2026-09-17   | maydhare padhi    | jayanti padhi    | A      | NULL |   92 |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |   80 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |   79 |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL |   78 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
6 rows in set (0.00 sec)

mysql> notee;
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| college            |
| employee_01        |
| information_schema |
| mysql              |
| performance_schema |
| shop               |
| sys                |
+--------------------+
7 rows in set (0.03 sec)

mysql> udse college;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'udse college' at line 1
mysql> use college;
Database changed
mysql> select * from student;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    2 | sai               | cuttack  |   22 | 2026-09-17   | maydhare padhi    | jayanti padhi    | A      | NULL |   92 |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |   80 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |   79 |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL |   78 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
6 rows in set (0.01 sec)

mysql> selct * from marks;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'selct * from marks' at line 1
mysql> select * from marks;
+---------+------+------------+
| subject | mark | student_id |
+---------+------+------------+
| SQL     |   90 |          1 |
| SQL     |   78 |          2 |
| SQL     |   92 |          3 |
| SQL     |   70 |          4 |
| SQL     |   86 |          5 |
| SQL     |   80 |          6 |
+---------+------+------------+
6 rows in set (0.00 sec)

mysql> select * from student order by id ASE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ASE' at line 1
mysql> select * from student order by id ASc;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    2 | sai               | cuttack  |   22 | 2026-09-17   | maydhare padhi    | jayanti padhi    | A      | NULL |   92 |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL |   78 |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |   80 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |   79 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
6 rows in set (0.00 sec)

mysql> select * from student;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    2 | sai               | cuttack  |   22 | 2026-09-17   | maydhare padhi    | jayanti padhi    | A      | NULL |   92 |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |   80 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |   79 |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL |   78 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
6 rows in set (0.00 sec)

mysql> select * from marks;
+---------+------+------------+
| subject | mark | student_id |
+---------+------+------------+
| SQL     |   90 |          1 |
| SQL     |   78 |          2 |
| SQL     |   92 |          3 |
| SQL     |   70 |          4 |
| SQL     |   86 |          5 |
| SQL     |   80 |          6 |
+---------+------+------------+
6 rows in set (0.00 sec)

mysql> select s.name, m.mark from student as s inner join marks as m s.is=m.student_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 's.is=m.student_id' at line 1
mysql> select s.name, m.mark from student as s inner join marks as m on.s.id=m.student_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'on.s.id=m.student_id' at line 1
mysql> select s.name, m.mark from student as s inner join marks as m on s.id=m.student_id;
+-------------------+------+
| name              | mark |
+-------------------+------+
| alok              |   90 |
| sai               |   78 |
| satyabrata        |   70 |
| satyabrata parida |   86 |
| sainath parida    |   80 |
| satya             |   92 |
+-------------------+------+
6 rows in set (0.00 sec)

mysql> select s.name,m.subject, m.mark from student as s inner join marks as m on s.id=m.student_id;
+-------------------+---------+------+
| name              | subject | mark |
+-------------------+---------+------+
| alok              | SQL     |   90 |
| sai               | SQL     |   78 |
| satyabrata        | SQL     |   70 |
| satyabrata parida | SQL     |   86 |
| sainath parida    | SQL     |   80 |
| satya             | SQL     |   92 |
+-------------------+---------+------+
6 rows in set (0.00 sec)

mysql> select s.name,m.subject from student as s inner join marks as m on s.id=m.student_id;
+-------------------+---------+
| name              | subject |
+-------------------+---------+
| alok              | SQL     |
| sai               | SQL     |
| satyabrata        | SQL     |
| satyabrata parida | SQL     |
| sainath parida    | SQL     |
| satya             | SQL     |
+-------------------+---------+
6 rows in set (0.00 sec)

mysql> select s.name,m.subject, m.mark from student as s inner join marks as m on s.id=m.student_id;
+-------------------+---------+------+
| name              | subject | mark |
+-------------------+---------+------+
| alok              | SQL     |   90 |
| sai               | SQL     |   78 |
| satyabrata        | SQL     |   70 |
| satyabrata parida | SQL     |   86 |
| sainath parida    | SQL     |   80 |
| satya             | SQL     |   92 |
+-------------------+---------+------+
6 rows in set (0.00 sec)

mysql> select s.name,m.subject, m.mark from student as s left join marks as m on s.id=m.student_id;
+-------------------+---------+------+
| name              | subject | mark |
+-------------------+---------+------+
| alok              | SQL     |   90 |
| sai               | SQL     |   78 |
| satyabrata        | SQL     |   70 |
| satyabrata parida | SQL     |   86 |
| sainath parida    | SQL     |   80 |
| satya             | SQL     |   92 |
+-------------------+---------+------+
6 rows in set (0.00 sec)

mysql> select s.name,m.subject, m.mark from student as s right join marks as m on s.id=m.student_id;
+-------------------+---------+------+
| name              | subject | mark |
+-------------------+---------+------+
| alok              | SQL     |   90 |
| sai               | SQL     |   78 |
| satya             | SQL     |   92 |
| satyabrata        | SQL     |   70 |
| satyabrata parida | SQL     |   86 |
| sainath parida    | SQL     |   80 |
+-------------------+---------+------+
6 rows in set (0.00 sec)

mysql> delete mark from marks where marks=86;
ERROR 1109 (42S02): Unknown table 'mark' in MULTI DELETE
mysql> update marks set mark is null where id=5;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'is null where id=5' at line 1
mysql> update marks set as mark is null where id=5;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'as mark is null where id=5' at line 1
mysql> update marks set mark=null where id=5;
ERROR 1054 (42S22): Unknown column 'id' in 'where clause'
mysql> update marks set mark='null' where id=5;
ERROR 1054 (42S22): Unknown column 'id' in 'where clause'
mysql> update marks set mark=null where student_id=5;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from marks;
+---------+------+------------+
| subject | mark | student_id |
+---------+------+------------+
| SQL     |   90 |          1 |
| SQL     |   78 |          2 |
| SQL     |   92 |          3 |
| SQL     |   70 |          4 |
| SQL     | NULL |          5 |
| SQL     |   80 |          6 |
+---------+------+------------+
6 rows in set (0.00 sec)

mysql> select s.name,m.subject, m.mark from student as s left join marks as m on s.id=m.student_id;
+-------------------+---------+------+
| name              | subject | mark |
+-------------------+---------+------+
| alok              | SQL     |   90 |
| sai               | SQL     |   78 |
| satyabrata        | SQL     |   70 |
| satyabrata parida | SQL     | NULL |
| sainath parida    | SQL     |   80 |
| satya             | SQL     |   92 |
+-------------------+---------+------+
6 rows in set (0.00 sec)

mysql> select s.name,m.subject from student as s inner join marks as m on s.id=m.student_id;
+-------------------+---------+
| name              | subject |
+-------------------+---------+
| alok              | SQL     |
| sai               | SQL     |
| satyabrata        | SQL     |
| satyabrata parida | SQL     |
| sainath parida    | SQL     |
| satya             | SQL     |
+-------------------+---------+
6 rows in set (0.00 sec)

mysql> delete from student where id=5;
ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`college`.`marks`, CONSTRAINT `fk_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`))
mysql> delete from marks
    -> where student_id = 5;
Query OK, 1 row affected (0.00 sec)

mysql> select * from marks;
+---------+------+------------+
| subject | mark | student_id |
+---------+------+------------+
| SQL     |   90 |          1 |
| SQL     |   78 |          2 |
| SQL     |   92 |          3 |
| SQL     |   70 |          4 |
| SQL     |   80 |          6 |
+---------+------+------------+
5 rows in set (0.00 sec)

mysql> select s.name,m.subject, m.mark from student as s right join marks as m on s.id=m.student_id;
+----------------+---------+------+
| name           | subject | mark |
+----------------+---------+------+
| alok           | SQL     |   90 |
| sai            | SQL     |   78 |
| satya          | SQL     |   92 |
| satyabrata     | SQL     |   70 |
| sainath parida | SQL     |   80 |
+----------------+---------+------+
5 rows in set (0.00 sec)

mysql> select s.name,m.subject from student as s inner join marks as m on s.id=m.student_id;
+----------------+---------+
| name           | subject |
+----------------+---------+
| alok           | SQL     |
| sai            | SQL     |
| satya          | SQL     |
| satyabrata     | SQL     |
| sainath parida | SQL     |
+----------------+---------+
5 rows in set (0.00 sec)

mysql> select s.name,m.subject, m.mark from student as s inner join marks as m on s.id=m.student_id;
+----------------+---------+------+
| name           | subject | mark |
+----------------+---------+------+
| alok           | SQL     |   90 |
| sai            | SQL     |   78 |
| satya          | SQL     |   92 |
| satyabrata     | SQL     |   70 |
| sainath parida | SQL     |   80 |
+----------------+---------+------+
5 rows in set (0.00 sec)

mysql> select s.name,m.subject, m.mark from student as s left join marks as m on s.id=m.student_id;
+-------------------+---------+------+
| name              | subject | mark |
+-------------------+---------+------+
| alok              | SQL     |   90 |
| sai               | SQL     |   78 |
| satyabrata        | SQL     |   70 |
| satyabrata parida | NULL    | NULL |
| sainath parida    | SQL     |   80 |
| satya             | SQL     |   92 |
+-------------------+---------+------+
6 rows in set (0.00 sec)

mysql> select s.name,m.subject, m.mark from student as s left join marks as m on s.id=m.student_id;
+-------------------+---------+------+
| name              | subject | mark |
+-------------------+---------+------+
| alok              | SQL     |   90 |
| sai               | SQL     |   78 |
| satyabrata        | SQL     |   70 |
| satyabrata parida | NULL    | NULL |
| sainath parida    | SQL     |   80 |
| satya             | SQL     |   92 |
+-------------------+---------+------+
6 rows in set (0.00 sec)

mysql> select s.name,m.subject, m.mark from student as s left join marks as m on s.id=m.student_id
    -> union
    -> select s.name,m.subject, m.mark from student as s right join marks as m on s.id=m.student_id;
+-------------------+---------+------+
| name              | subject | mark |
+-------------------+---------+------+
| alok              | SQL     |   90 |
| sai               | SQL     |   78 |
| satyabrata        | SQL     |   70 |
| satyabrata parida | NULL    | NULL |
| sainath parida    | SQL     |   80 |
| satya             | SQL     |   92 |
+-------------------+---------+------+
6 rows in set (0.00 sec)

mysql> select s.name,m.subject, m.mark from student as s right ounter join marks as m on s.id=m.student_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ounter join marks as m on s.id=m.student_id' at line 1
mysql> select s.name,m.subject, m.mark from student as s right outer join marks as m on s.id=m.student_id;
+----------------+---------+------+
| name           | subject | mark |
+----------------+---------+------+
| alok           | SQL     |   90 |
| sai            | SQL     |   78 |
| satya          | SQL     |   92 |
| satyabrata     | SQL     |   70 |
| sainath parida | SQL     |   80 |
+----------------+---------+------+
5 rows in set (0.00 sec)

mysql> select s.name,m.subject, m.mark from student as s left outer join marks as m on s.id=m.student_id;
+-------------------+---------+------+
| name              | subject | mark |
+-------------------+---------+------+
| alok              | SQL     |   90 |
| sai               | SQL     |   78 |
| satyabrata        | SQL     |   70 |
| satyabrata parida | NULL    | NULL |
| sainath parida    | SQL     |   80 |
| satya             | SQL     |   92 |
+-------------------+---------+------+
6 rows in set (0.00 sec)

mysql> select s.name,m.subject, m.mark from student as s left outer join marks as m on s.id=m.student_id
    -> union
    -> select s.name,m.subject, m.mark from student as s right outer join marks as m on s.id=m.student_id;
+-------------------+---------+------+
| name              | subject | mark |
+-------------------+---------+------+
| alok              | SQL     |   90 |
| sai               | SQL     |   78 |
| satyabrata        | SQL     |   70 |
| satyabrata parida | NULL    | NULL |
| sainath parida    | SQL     |   80 |
| satya             | SQL     |   92 |
+-------------------+---------+------+
6 rows in set (0.00 sec)

mysql> select s.name,m.subject, m.mark from student as s cross join marks as m ;
+-------------------+---------+------+
| name              | subject | mark |
+-------------------+---------+------+
| alok              | SQL     |   80 |
| alok              | SQL     |   70 |
| alok              | SQL     |   92 |
| alok              | SQL     |   78 |
| alok              | SQL     |   90 |
| sai               | SQL     |   80 |
| sai               | SQL     |   70 |
| sai               | SQL     |   92 |
| sai               | SQL     |   78 |
| sai               | SQL     |   90 |
| satyabrata        | SQL     |   80 |
| satyabrata        | SQL     |   70 |
| satyabrata        | SQL     |   92 |
| satyabrata        | SQL     |   78 |
| satyabrata        | SQL     |   90 |
| satyabrata parida | SQL     |   80 |
| satyabrata parida | SQL     |   70 |
| satyabrata parida | SQL     |   92 |
| satyabrata parida | SQL     |   78 |
| satyabrata parida | SQL     |   90 |
| sainath parida    | SQL     |   80 |
| sainath parida    | SQL     |   70 |
| sainath parida    | SQL     |   92 |
| sainath parida    | SQL     |   78 |
| sainath parida    | SQL     |   90 |
| satya             | SQL     |   80 |
| satya             | SQL     |   70 |
| satya             | SQL     |   92 |
| satya             | SQL     |   78 |
| satya             | SQL     |   90 |
+-------------------+---------+------+
30 rows in set (0.00 sec)

mysql> serlect *from student natural join marks;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'serlect *from student natural join marks' at line 1
mysql> select *from student natural join marks;
+------+------+------------+----------+------+--------------+-------------------+-----------------+--------+------+---------+------------+
| mark | id   | name       | city     | age  | created_date | Father_name       | mother_name     | graede | dob  | subject | student_id |
+------+------+------------+----------+------+--------------+-------------------+-----------------+--------+------+---------+------------+
|   90 |    1 | alok       | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi   | A      | NULL | SQL     |          1 |
|   92 |    2 | sai        | cuttack  |   22 | 2026-09-17   | maydhare padhi    | jayanti padhi   | A      | NULL | SQL     |          3 |
|   80 |    4 | satyabrata | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi | B      | NULL | SQL     |          6 |
|   78 |    3 | satya      | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi     | NULL   | NULL | SQL     |          2 |
+------+------+------------+----------+------+--------------+-------------------+-----------------+--------+------+---------+------------+
4 rows in set (0.00 sec)

mysql> select s.name,m.subject, m.mark from student as s inner join marks as m on s.id=m.student_id;
+----------------+---------+------+
| name           | subject | mark |
+----------------+---------+------+
| alok           | SQL     |   90 |
| sai            | SQL     |   78 |
| satya          | SQL     |   92 |
| satyabrata     | SQL     |   70 |
| sainath parida | SQL     |   80 |
+----------------+---------+------+
5 rows in set (0.00 sec)

mysql> select s.name,m.subject from student as s inner join marks as m on s.id=m.student_id where age>24;
+----------------+---------+
| name           | subject |
+----------------+---------+
| alok           | SQL     |
| satyabrata     | SQL     |
| sainath parida | SQL     |
+----------------+---------+
3 rows in set (0.00 sec)

mysql> select s.name,m.subject from student as s inner join marks as m on s.id=m.student_id where age>23;
+----------------+---------+
| name           | subject |
+----------------+---------+
| alok           | SQL     |
| satyabrata     | SQL     |
| sainath parida | SQL     |
+----------------+---------+
3 rows in set (0.00 sec)

mysql> select s.name,m.subject from student as s inner join marks as m on s.id=m.student_id where age>21;
+----------------+---------+
| name           | subject |
+----------------+---------+
| alok           | SQL     |
| sai            | SQL     |
| satyabrata     | SQL     |
| sainath parida | SQL     |
| satya          | SQL     |
+----------------+---------+
5 rows in set (0.00 sec)

mysql> select s.name,m.subject from student as s inner join marks as m on s.id=m.student_id order by ase;
ERROR 1054 (42S22): Unknown column 'ase' in 'order clause'
mysql> select s.name,m.subject from student as s inner join marks as m on s.id=m.student_id order by s.age ase;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ase' at line 1
mysql> select s.name,m.subject from student as s inner join marks as m on s.id=m.student_id order by s.age asc;
+----------------+---------+
| name           | subject |
+----------------+---------+
| sai            | SQL     |
| satya          | SQL     |
| satyabrata     | SQL     |
| sainath parida | SQL     |
| alok           | SQL     |
+----------------+---------+
5 rows in set (0.00 sec)

mysql> select s.name,m.subject,s.age from student as s inner join marks as m on s.id=m.student_id order by s.age asc;
+----------------+---------+------+
| name           | subject | age  |
+----------------+---------+------+
| sai            | SQL     |   22 |
| satya          | SQL     |   23 |
| satyabrata     | SQL     |   26 |
| sainath parida | SQL     |   26 |
| alok           | SQL     |   28 |
+----------------+---------+------+
5 rows in set (0.00 sec)

mysql> select s.name,m.subject,s.age from student as s inner join marks as m on s.id=m.student_id order by s.age desc;
+----------------+---------+------+
| name           | subject | age  |
+----------------+---------+------+
| alok           | SQL     |   28 |
| satyabrata     | SQL     |   26 |
| sainath parida | SQL     |   26 |
| satya          | SQL     |   23 |
| sai            | SQL     |   22 |
+----------------+---------+------+
5 rows in set (0.00 sec)

mysql> select *from student ;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    2 | sai               | cuttack  |   22 | 2026-09-17   | maydhare padhi    | jayanti padhi    | A      | NULL |   92 |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |   80 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |   79 |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL |   78 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
6 rows in set (0.00 sec)

mysql> select *from marks ;
+---------+------+------------+
| subject | mark | student_id |
+---------+------+------------+
| SQL     |   90 |          1 |
| SQL     |   78 |          2 |
| SQL     |   92 |          3 |
| SQL     |   70 |          4 |
| SQL     |   80 |          6 |
+---------+------+------------+
5 rows in set (0.00 sec)

mysql> notee;
