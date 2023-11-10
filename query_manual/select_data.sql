mysql> SELECT * FROM users ORDER BY username ASC;
+---------+----------+-------------------+------------+-------------------+
| user_id | username | email             | password   | alamat            |
+---------+----------+-------------------+------------+-------------------+
|       4 | Aji      | aji@gmail.com     | aji123     | Jl. suka sini     |
|       1 | Angga    | angga@gmail.com   | angga123   | Jl suka suka      |
|       6 | Avansya  | avansya@gmail.com | avansya123 | Jl. mana ada      |
|       9 | Faruk    | faruk@gmail.com   | faruk123   | Jl. kampung asri  |
|      11 | Firawan  | firawan@gmail.com | firawan123 | Jl. sana sini     |
|       8 | Hengky   | hengky@gmail.com  | hengky123  | Jl. suka suka     |
|       7 | Intan    | intan@gmail.com   | intan123   | Jl. sampurasun    |
|       3 | Nadia    | nadia@gmail.com   | nadia123   | Jl. sana sini     |
|       5 | Novri    | novri@gmail.com   | novri123   | Jl. kampung sari  |
|      10 | Teguh    | teguh@gmail.com   | teguh123   | Jl. keramat kasih |
+---------+----------+-------------------+------------+-------------------+
10 rows in set (0.02 sec)

mysql> SELECT * FROM products;
+------------+--------------+------------+-------+
| product_id | name         | kategori   | harga |
+------------+--------------+------------+-------+
|          1 | Pop-ice      | Minuman    |  5000 |
|          2 | Marimas      | Minuman    |  1000 |
|          3 | Pocari Sweet | Minuman    |  5000 |
|          4 | Sprit        | Minuman    |  4000 |
|          5 | Biskuat      | Makanan    |  1000 |
|          6 | Stick Pogo   | Makanan    |   500 |
|          7 | Pillows      | Makanan    |  2000 |
|          8 | Taro         | Makanan    |  5000 |
|          9 | Shinzui      | Kebersihan |  2500 |
|         10 | Pepsodent    | Kebersihan |  3000 |
|         11 | Clear        | Kebersihan |  1000 |
|         12 | Rexona       | Kebersihan | 15000 |
+------------+--------------+------------+-------+
12 rows in set (0.00 sec)

mysql> SELECT * FROM carts;
+---------+---------+------------+
| cart_id | user_id | product_id |
+---------+---------+------------+
|       1 |       4 |          4 |
|       2 |       1 |          1 |
|       3 |       1 |          3 |
|       4 |       1 |          4 |
|       5 |       6 |          1 |
|       6 |       6 |          1 |
|       7 |       6 |          5 |
|       8 |       5 |          3 |
|       9 |       7 |          9 |
|      10 |       7 |          9 |
|      11 |       7 |          6 |
|      12 |       4 |          6 |
|      13 |       4 |          3 |
+---------+---------+------------+
13 rows in set (0.00 sec)

mysql> SELECT * FROM transaksi ORDER BY kode_transaksi ASC;
+--------------+---------+----------------+------------------+
| transaksi_id | cart_id | kode_transaksi | jenis_pembayaran |
+--------------+---------+----------------+------------------+
|            9 |       7 |        2885552 | Gopay            |
|           10 |      13 |        3335550 | Dana             |
|            4 |       1 |        8880999 | Dana             |
|            3 |       2 |        8881122 | Gopay            |
|            1 |       4 |        8884444 | Gopay            |
|            8 |       9 |        8885551 | Dana             |
|            2 |       5 |        8885552 | Qris             |
|            5 |       3 |        8885552 | Dana             |
|           11 |      11 |        8885552 | Qris             |
|            6 |       6 |        8889000 | ShoppePay        |
|           12 |      10 |        9095552 | Qris             |
|            7 |       8 |        9985553 | ShoppePay        |
+--------------+---------+----------------+------------------+
12 rows in set (0.00 sec)

mysql> SELECT * FROM orders ORDER BY kode_order ASC;
+-----------+--------------+------------+---------------------+
| orders_id | transaksi_id | kode_order | tanggal_order       |
+-----------+--------------+------------+---------------------+
|         1 |            5 |    1110011 | 2023-10-01 10:21:00 |
|         2 |            4 |    1110012 | 2023-10-01 10:10:00 |
|         3 |            1 |    1110013 | 2023-10-10 10:09:00 |
|         4 |            9 |    1110014 | 2023-10-09 10:07:00 |
|         5 |           10 |    1110015 | 2023-10-01 10:07:00 |
|         6 |            3 |    1110021 | 2023-10-05 10:01:00 |
|         7 |           11 |    1110022 | 2023-10-07 10:11:00 |
|         8 |            2 |    1110024 | 2023-10-02 10:15:00 |
|         9 |            7 |    1110025 | 2023-10-03 10:20:00 |
|        10 |            6 |    1110030 | 2023-10-09 10:20:00 |
|        11 |           12 |    1110031 | 2023-10-11 10:22:00 |
|        12 |            8 |    1110032 | 2023-10-10 10:22:00 |
+-----------+--------------+------------+---------------------+
12 rows in set (0.00 sec)
