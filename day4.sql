mysql> Show databases:
    -> Show databases;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ':
Show databases' at line 1
mysql> Show databases;
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
7 rows in set (0.02 sec)

mysql> use college;
Database changed
mysql> select *from student;
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

mysql> select count(*)from student;
+----------+
| count(*) |
+----------+
|        6 |
+----------+
1 row in set (0.01 sec)

mysql> select city,count(*) as each_citywise ,(count(*)*100.0/(select count(*)from student))from student Group by city;
+----------+---------------+------------------------------------------------+
| city     | each_citywise | (count(*)*100.0/(select count(*)from student)) |
+----------+---------------+------------------------------------------------+
| bbsr     |             3 |                                       50.00000 |
| cuttack  |             1 |                                       16.66667 |
| balesore |             2 |                                       33.33333 |
+----------+---------------+------------------------------------------------+
3 rows in set (0.01 sec)

mysql> select city,count(*) as each_citywise ,(count(*)*100.0/(select count(*)from student)) as percentage from student Group by city;
+----------+---------------+------------+
| city     | each_citywise | percentage |
+----------+---------------+------------+
| bbsr     |             3 |   50.00000 |
| cuttack  |             1 |   16.66667 |
| balesore |             2 |   33.33333 |
+----------+---------------+------------+
3 rows in set (0.00 sec)

mysql> select city,count(*) as each_citywise ,round(count(*)*100.0/(select count(*)from student)) as percentage from student Group by city;
+----------+---------------+------------+
| city     | each_citywise | percentage |
+----------+---------------+------------+
| bbsr     |             3 |         50 |
| cuttack  |             1 |         17 |
| balesore |             2 |         33 |
+----------+---------------+------------+
3 rows in set (0.00 sec)

mysql> select city ,count(*) as city_wise from student group by city having count(*)>2;
+------+-----------+
| city | city_wise |
+------+-----------+
| bbsr |         3 |
+------+-----------+
1 row in set (0.00 sec)

mysql> select city,avg(age) from student group by city having Avg(age)>25;
+----------+----------+
| city     | avg(age) |
+----------+----------+
| bbsr     |  25.6667 |
| balesore |  26.0000 |
+----------+----------+
2 rows in set (0.00 sec)

mysql> select city,roumd(avg(age)) from student group by city having Avg(age)>25;
ERROR 1305 (42000): FUNCTION college.roumd does not exist
mysql> select city,avg(age) from student group by city having round(Avg(age)>25);
+----------+----------+
| city     | avg(age) |
+----------+----------+
| bbsr     |  25.6667 |
| balesore |  26.0000 |
+----------+----------+
2 rows in set (0.00 sec)

mysql> select city,round(avg(age),2) from student group by city having Avg(age)>25;
+----------+-------------------+
| city     | round(avg(age),2) |
+----------+-------------------+
| bbsr     |             25.67 |
| balesore |             26.00 |
+----------+-------------------+
2 rows in set (0.00 sec)

mysql> select * from student limt 2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '2' at line 1
mysql> select * from student limit 2;
+------+------+---------+------+--------------+----------------+---------------+--------+------+------+
| id   | name | city    | age  | created_date | Father_name    | mother_name   | graede | dob  | mark |
+------+------+---------+------+--------------+----------------+---------------+--------+------+------+
|    1 | alok | bbsr    |   28 | 2026-09-17   | ratnakar padhi | jayanti padhi | A      | NULL |   90 |
|    2 | sai  | cuttack |   22 | 2026-09-17   | maydhare padhi | jayanti padhi | A      | NULL |   92 |
+------+------+---------+------+--------------+----------------+---------------+--------+------+------+
2 rows in set (0.00 sec)

mysql> select * from student limit 2,3;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    4 | satyabrata        | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita padhi  | B      | NULL |   80 |
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |   79 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
3 rows in set (0.00 sec)

mysql> select * from student limit 2 offset 3;
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
| id   | name              | city     | age  | created_date | Father_name       | mother_name      | graede | dob  | mark |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
|    5 | satyabrata parida | balesore |   26 | 2026-09-17   | sibaji sankar sau | madhumita bahara | B      | NULL |   75 |
|    6 | sainath parida    | bbsr     |   26 | 2026-09-17   | sankar sau        | madhumita bahara | B      | NULL |   79 |
+------+-------------------+----------+------+--------------+-------------------+------------------+--------+------+------+
2 rows in set (0.00 sec)

mysql> notee;
