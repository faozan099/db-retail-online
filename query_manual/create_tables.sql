-- Buat table users
CREATE TABLE users(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nama_lengkap VARCHAR(255) NOT NULL DEFAULT '',
    email VARCHAR(255) NOT NULL DEFAULT '',
    alamat VARCHAR(255) NOT NULL DEFAULT ''
)
mysql> desc users;
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| id           | int          | NO   | PRI | NULL    | auto_increment |
| nama_lengkap | varchar(255) | NO   |     |         |                |
| email        | varchar(255) | NO   |     |         |                |
| alamat       | varchar(255) | NO   |     |         |                |
+--------------+--------------+------+-----+---------+----------------+
4 rows in set (0.01 sec)

--Buat tabel product
CREATE TABLE products(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nama_product VARCHAR(255) NOT NULL DEFAULT '',
    kategori VARCHAR(225) NOT NULL DEFAULT '',
    harga INT NOT NULL DEFAULT 0
);
mysql> desc products;
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| id           | int          | NO   | PRI | NULL    | auto_increment |
| nama_product | varchar(255) | NO   |     |         |                |
| kategori     | varchar(225) | NO   |     |         |                |
| harga        | int          | NO   |     | 0       |                |
+--------------+--------------+------+-----+---------+----------------+
4 rows in set (0.01 sec)
