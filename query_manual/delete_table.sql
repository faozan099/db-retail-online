mysql> SHOW TABLES;
+----------------------------+
| Tables_in_db_retail_online |
+----------------------------+
| carts                      |
| orders                     |
| products                   |
| toko                       |
| transaksi                  |
| users                      |
+----------------------------+
6 rows in set (0.01 sec)

mysql> DROP TABLE toko;
Query OK, 0 rows affected (0.04 sec)

mysql> SHOW TABLES;
+----------------------------+
| Tables_in_db_retail_online |
+----------------------------+
| carts                      |
| orders                     |
| products                   |
| transaksi                  |
| users                      |
+----------------------------+
5 rows in set (0.00 sec)