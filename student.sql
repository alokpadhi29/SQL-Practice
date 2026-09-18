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
