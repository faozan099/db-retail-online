-- Buat table users
CREATE TABLE users(
    user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL DEFAULT '',
    email VARCHAR(255) NOT NULL DEFAULT '',
    password VARCHAR(255) NOT NULL DEFAULT '',
    alamat VARCHAR(255) NOT NULL DEFAULT ''
);

mysql> desc users;
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| user_id  | int          | NO   | PRI | NULL    | auto_increment |
| username | varchar(255) | NO   |     |         |                |
| email    | varchar(255) | NO   |     |         |                |
| password | varchar(255) | NO   |     |         |                |
| alamat   | varchar(255) | NO   |     |         |                |
+----------+--------------+------+-----+---------+----------------+
5 rows in set (0.01 sec)

--Buat tabel products
CREATE TABLE products(
    product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL DEFAULT '',
    kategori VARCHAR(225) NOT NULL DEFAULT '',
    harga INT NOT NULL DEFAULT 0
);

mysql> desc products;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| product_id | int          | NO   | PRI | NULL    | auto_increment |
| name       | varchar(255) | NO   |     |         |                |
| kategori   | varchar(225) | NO   |     |         |                |
| harga      | int          | NO   |     | 0       |                |
+------------+--------------+------+-----+---------+----------------+
4 rows in set (0.01 sec)

-- Buat table carts
CREATE TABLE carts(
    cart_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES db_retail_online.users (user_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT product_id FOREIGN KEY (product_id) REFERENCES db_retail_online.products (product_id) ON UPDATE CASCADE ON DELETE CASCADE
);

mysql> desc carts;
+------------+------+------+-----+---------+----------------+
| Field      | Type | Null | Key | Default | Extra          |
+------------+------+------+-----+---------+----------------+
| cart_id    | int  | NO   | PRI | NULL    | auto_increment |
| user_id    | int  | NO   | MUL | NULL    |                |
| product_id | int  | NO   | MUL | NULL    |                |
+------------+------+------+-----+---------+----------------+
3 rows in set (0.01 sec)

-- Buat table transaksi

CREATE TABLE transaksi(
    transaksi_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cart_id INT NOT NULL,
    kode_transaksi INT NOT NULL DEFAULT 0,
    jenis_pembayaran VARCHAR(255) NOT NULL DEFAULT '',
    CONSTRAINT cart_id FOREIGN KEY (cart_id) REFERENCES db_retail_online.carts (cart_id) ON UPDATE CASCADE ON DELETE CASCADE,
);

mysql> desc transaksi;
+------------------+--------------+------+-----+---------+----------------+
| Field            | Type         | Null | Key | Default | Extra          |
+------------------+--------------+------+-----+---------+----------------+
| transaksi_id     | int          | NO   | PRI | NULL    | auto_increment |
| cart_id          | int          | NO   | MUL | NULL    |                |
| kode_transaksi   | int          | NO   |     | 0       |                |
| jenis_pembayaran | varchar(255) | NO   |     |         |                |
+------------------+--------------+------+-----+---------+----------------+
4 rows in set (0.01 sec)

CREATE TABLE orders(
    orders_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    transaksi_id INT NOT NULL,
    kode_order INT NOT NULL DEFAULT 0,
    tanggal_order DATETIME,
    CONSTRAINT transaksi_id FOREIGN KEY (transaksi_id) REFERENCES db_retail_online.transaksi (transaksi_id) ON UPDATE CASCADE ON DELETE CASCADE,
);

mysql> desc orders;
+---------------+----------+------+-----+---------+----------------+
| Field         | Type     | Null | Key | Default | Extra          |
+---------------+----------+------+-----+---------+----------------+
| orders_id     | int      | NO   | PRI | NULL    | auto_increment |
| transaksi_id  | int      | NO   | MUL | NULL    |                |
| kode_order    | int      | NO   |     | 0       |                |
| tanggal_order | datetime | YES  |     | NULL    |                |
+---------------+----------+------+-----+---------+----------------+
4 rows in set (0.01 sec)