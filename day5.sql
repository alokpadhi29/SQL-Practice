mysql> USE college;
Database changed
mysql> mysql> select *from student where age>(select avg(age)from student);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql> select *from student where age>(select avg(age)from student)' at line 1
mysql> USE college;
Database changed
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
| SQL     |   86 |          5 |
| SQL     |   80 |          6 |
+---------+------+------------+
6 rows in set (0.00 sec)

mysql> mysql> select *from student where age>(select avg(age)from student);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql> select *from student where age>(select avg(age)from student)' at line 1
mysql> mysql> select *from student where age=(select max(age) from student);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql> select *from student where age=(select max(age) from student)' at line 1
mysql> select *from student where age>(select avg(age)from student);
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |   80 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |   79 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
4 rows in set (0.00 sec)

mysql> select *from student where age=(select max(age) from student);
+------+------+------+------+--------------+----------------+---------------+--------+------+------+
| id   | name | city | age  | created_date | Father_name    | mother_name   | graede | dob  | mark |
+------+------+------+------+--------------+----------------+---------------+--------+------+------+
|    1 | alok | bbsr |   28 | 2026-09-17   | ratnakar padhi | jayanti padhi | A      | NULL |   90 |
+------+------+------+------+--------------+----------------+---------------+--------+------+------+
1 row in set (0.00 sec)

mysql> select *from student where age>(select avg(age)from student);
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |   80 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |   79 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
4 rows in set (0.00 sec)

mysql> select max(mark) from marks;
+-----------+
| max(mark) |
+-----------+
|        92 |
+-----------+
1 row in set (0.00 sec)

mysql> mysql> select min(mark) from marks;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql> select min(mark) from marks' at line 1
mysql>  select min(mark) from marks;
+-----------+
| min(mark) |
+-----------+
|        70 |
+-----------+
1 row in set (0.00 sec)

mysql> select avg(mark) from marks;
+-----------+
| avg(mark) |
+-----------+
|   82.6667 |
+-----------+
1 row in set (0.00 sec)

mysql> select round(avg(mark),2) from marks;
+--------------------+
| round(avg(mark),2) |
+--------------------+
|              82.67 |
+--------------------+
1 row in set (0.00 sec)

mysql> select max(mark) as second_highest from marks where mark<(select max(mark)from marks);
+----------------+
| second_highest |
+----------------+
|             90 |
+----------------+
1 row in set (0.00 sec)

mysql> select min(mark) as second_highest from marks where mark<(select max(mark)from marks);
+----------------+
| second_highest |
+----------------+
|             70 |
+----------------+
1 row in set (0.00 sec)

mysql> select name from student where id in(select student_id from marks where mark =90);
+------+
| name |
+------+
| alok |
+------+
1 row in set (0.00 sec)

mysql>  select * from student where id in(select student_id from marks where mark >70);
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    2 | sai               | cuttack  |   22 | 2026-09-17   | maydhare padhi    | jayanti padhi    | A      | NULL |   92 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |   79 |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL |   78 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
5 rows in set (0.00 sec)

mysql> ^C
mysql> select count(*) from student where id in(select student_id from marks where mark >70);
+----------+
| count(*) |
+----------+
|        5 |
+----------+
1 row in set (0.00 sec)

mysql> select * from student where id in(select student_id from marks where mark >(select avg(mark)from marks));
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL |   78 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
3 rows in set (0.00 sec)

mysql> select name from student where id in(select student_id from marks where mark >(select avg(mark)from marks));
+-------------------+
| name              |
+-------------------+
| alok              |
| satyabrata parida |
| satya             |
+-------------------+
3 rows in set (0.00 sec)

mysql> select name from student where id in(select student_id from marks where mark =(select max(mark)from marks));
+-------+
| name  |
+-------+
| satya |
+-------+
1 row in set (0.00 sec)

mysql> select name from student where id in(select student_id from marks where mark =(select min(mark)from marks));
+------------+
| name       |
+------------+
| satyabrata |
+------------+
1 row in set (0.00 sec)

mysql> select name from student where id in(select student_id from marks where mark =(select max(mark)from marks where mark<(select max(mark)from marks)));
+------+
| name |
+------+
| alok |
+------+
1 row in set (0.00 sec)

mysql> ^C
mysql> select name from student where id in(select student_id from marks where mark <>(select max(mark)from marks));
+-------------------+
| name              |
+-------------------+
| alok              |
| sai               |
| satyabrata        |
| satyabrata parida |
| sainath parida    |
+-------------------+
5 rows in set (0.00 sec)

mysql> select *from(
    -> select student_id
    -> from marks
    -> where mark>80
    -> )as getermark;
+------------+
| student_id |
+------------+
|          1 |
|          3 |
|          5 |
+------------+
3 rows in set (0.00 sec)

mysql> select s.*
    -> from student as s
    -> join(
    -> select student_id
    -> from marks
    -> where mark>80
    -> )as getermark
    -> on s.id=getermark.student_id;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL |   78 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
3 rows in set (0.00 sec)

mysql> select name from student where id in(select student_id from marks where mark =(select max(mark)from marks where mark<(select max(mark)from marks)));
+------+
| name |
+------+
| alok |
+------+
1 row in set (0.00 sec)

mysql> mysql> select *from student where age>(select avg(age)from student);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql> select *from student where age>(select avg(age)from student)' at line 1
mysql> select *from student where age>(select avg(age)from student);
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |   80 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |   79 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
4 rows in set (0.00 sec)

mysql> select count(*) from student where id in(select student_id from marks where mark >70);
+----------+
| count(*) |
+----------+
|        5 |
+----------+
1 row in set (0.00 sec)

mysql> select name from student where id in(select student_id from marks where mark =90);
+------+
| name |
+------+
| alok |
+------+
1 row in set (0.00 sec)

mysql> mysql> select *from student where age>(select avg(age)from student);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql> select *from student where age>(select avg(age)from student)' at line 1
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
| SQL     |   86 |          5 |
| SQL     |   80 |          6 |
+---------+------+------------+
6 rows in set (0.00 sec)

mysql> select *from student where age>(select avg(age)from student);
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |   80 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |   79 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
4 rows in set (0.00 sec)

mysql> select *from student where age>(select avg(age)from student);
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |   80 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |   79 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
4 rows in set (0.00 sec)

mysql> select min(mark) from marks;
+-----------+
| min(mark) |
+-----------+
|        70 |
+-----------+
1 row in set (0.00 sec)

mysql> select name from student where id in(select student_id from marks where mark >(select avg(mark)from marks));
+-------------------+
| name              |
+-------------------+
| alok              |
| satyabrata parida |
| satya             |
+-------------------+
3 rows in set (0.00 sec)

mysql> select s.*
    -> from student as s
    -> join(
    -> select student_id
    -> from marks
    -> where mark>80
    -> )as getermark
    -> on s.id=getermark.student_id;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    3 | satya             | bbsr     |   23 | 2026-09-17   | sibaji sau        | madhu padhi      | NULL   | NULL |   78 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
3 rows in set (0.00 sec)

mysql> select *from(
    -> select student_id
    -> from marks
    -> where mark>80
    -> )as getermark;
+------------+
| student_id |
+------------+
|          1 |
|          3 |
|          5 |
+------------+
3 rows in set (0.00 sec)

mysql> select *from student where age>(select avg(age)from student);
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |   80 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |   79 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
4 rows in set (0.00 sec)

mysql> select min(mark) from marks;
+-----------+
| min(mark) |
+-----------+
|        70 |
+-----------+
1 row in set (0.00 sec)

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

mysql> select count(*) from student where id in(select student_id from marks where mark >70);
+----------+
| count(*) |
+----------+
|        5 |
+----------+
1 row in set (0.00 sec)

mysql> select *from student where age>(select avg(age)from student);
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    1 | alok              | bbsr     |   28 | 2026-09-17   | ratnakar padhi    | jayanti padhi    | A      | NULL |   90 |
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |   80 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |   79 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
4 rows in set (0.00 sec)

mysql> select name from student where id in(select student_id from marks where mark =90);
+------+
| name |
+------+
| alok |
+------+
1 row in set (0.00 sec)

mysql> notee;
