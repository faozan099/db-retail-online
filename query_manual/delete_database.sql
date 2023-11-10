mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| db_retail_online   |
| information_schema |
| learn_script_db    |
| mysql              |
| one_to_many_db     |
| performance_schema |
| sakila             |
| sys                |
| test               |
| world              |
+--------------------+
10 rows in set (0.01 sec)

mysql> DROP DATABASE test;
Query OK, 0 rows affected (0.03 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| db_retail_online   |
| information_schema |
| learn_script_db    |
| mysql              |
| one_to_many_db     |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
9 rows in set (0.00 sec)