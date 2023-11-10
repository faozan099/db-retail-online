mysql> SELECT * FROM users;
+---------+----------+-------------------+------------+-------------------+
| user_id | username | email             | password   | alamat            |
+---------+----------+-------------------+------------+-------------------+
|       1 | Angga    | angga@gmail.com   | angga123   | Jl suka suka      |
|       3 | Nadia    | nadia@gmail.com   | nadia123   | Jl. sana sini     |
|       4 | Aji      | aji@gmail.com     | aji123     | Jl. suka sini     |
|       5 | Novri    | novri@gmail.com   | novri123   | Jl. kampung sari  |
|       6 | Avansya  | avansya@gmail.com | avansya123 | Jl. mana ada      |
|       7 | Intan    | intan@gmail.com   | intan123   | Jl. sampurasun    |
|       8 | Hengky   | hengky@gmail.com  | hengky123  | Jl. suka suka     |
|       9 | Faruk    | faruk@gmail.com   | faruk123   | Jl. kampung asri  |
|      10 | Teguh    | teguh@gmail.com   | teguh123   | Jl. keramat kasih |
|      11 | Firawan  | firawan@gmail.com | firawan123 | Jl. sana sini     |
+---------+----------+-------------------+------------+-------------------+
10 rows in set (0.00 sec)

mysql> UPDATE users SET username = "Saputra", email = "saputra@gmail.com", passw
ord = "saputra123" WHERE user_id = 7;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM users;
+---------+----------+-------------------+------------+-------------------+
| user_id | username | email             | password   | alamat            |
+---------+----------+-------------------+------------+-------------------+
|       1 | Angga    | angga@gmail.com   | angga123   | Jl suka suka      |
|       3 | Nadia    | nadia@gmail.com   | nadia123   | Jl. sana sini     |
|       4 | Aji      | aji@gmail.com     | aji123     | Jl. suka sini     |
|       5 | Novri    | novri@gmail.com   | novri123   | Jl. kampung sari  |
|       6 | Avansya  | avansya@gmail.com | avansya123 | Jl. mana ada      |
|       7 | Saputra  | saputra@gmail.com | saputra123 | Jl. sampurasun    |
|       8 | Hengky   | hengky@gmail.com  | hengky123  | Jl. suka suka     |
|       9 | Faruk    | faruk@gmail.com   | faruk123   | Jl. kampung asri  |
|      10 | Teguh    | teguh@gmail.com   | teguh123   | Jl. keramat kasih |
|      11 | Firawan  | firawan@gmail.com | firawan123 | Jl. sana sini     |
+---------+----------+-------------------+------------+-------------------+
10 rows in set (0.00 sec)
