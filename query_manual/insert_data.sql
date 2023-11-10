-- insert table users
INSERT INTO users(username, email, password, alamat)
VALUES("Angga", "angga@gmail.com", "angga123", "Jl. suka suka"),
("Alya", "alya@gmail.com", "alya123", "Jl. suka sini"),
("Nadia", "nadia@gmail.com", "nadia123", "Jl. sana sini"),
("Aji", "aji@gmail.com", "aji123", "Jl. suka sini"),
("Novri", "novri@gmail.com", "novri123", "Jl. kampung sari"),
("Avansya", "avansya@gmail.com", "avansya123", "Jl. mana ada"),
("Intan", "intan@gmail.com", "intan123", "Jl. sampurasun"),
("Hengky", "hengky@gmail.com", "hengky123", "Jl. suka suka"),
("Faruk", "faruk@gmail.com", "faruk123", "Jl. kampung asri"),
("Teguh", "teguh@gmail.com", "teguh123", "Jl. keramat kasih"),
("Firawan", "firawan@gmail.com", "firawan123", "Jl. sana sini")

-- insert table product
INSERT INTO products(name, kategori, harga)
VALUES("Pop-ice", "Minuman", 5000),
("Marimas", "Minuman", 1000),
("Pocari Sweet", "Minuman", 5000),
("Sprit", "Minuman", 4000),
("Biskuat", "Makanan", 1000),
("Stick Pogo", "Makanan", 500),
("Pillows", "Makanan", 2000),
("Taro", "Makanan", 5000),
("Shinzui", "Kebersihan", 2500),
("Pepsodent", "Kebersihan", 3000),
("Clear", "Kebersihan", 1000),
("Rexona", "Kebersihan", 15000)

-- crete table carts
INSERT INTO carts(user_id, product_id) 
VALUES (4, 4),
(1, 1),
(1, 3),
(1, 4),
(6, 1),
(6, 1),
(6, 5),
(5, 3),
(7, 9),
(7, 9),
(7, 6),
(4, 6),
(4, 3)

-- create table transaksi
INSERT INTO transaksi(cart_id, kode_transaksi, jenis_pembayaran)
VALUES(4, 8884444, "Gopay"),
(5, 8885552, "Qris"),
(2, 8881122, "Gopay"),
(1, 8880999, "Dana"),
(3, 8885552, "Dana"),
(6, 8889000, "ShoppePay"),
(8, 9985553, "ShoppePay"),
(9, 8885551, "Dana"),
(7, 2885552, "Gopay"),
(13, 3335550, "Dana"),
(11, 8885552, "Qris"),
(10, 9095552, "Qris")

-- create table orders
INSERT INTO orders (transaksi_id, kode_order, tanggal_order)
VALUES(5, 1110011, '2023-10-01 10-21-00'),
(4, 1110012, '2023-10-01 10-10-00'),
(1, 1110013, '2023-10-10 10-09-00'),
(9, 1110014, '2023-10-09 10-07-00'),
(10, 1110015, '2023-10-01 10-07-00'),
(3, 1110021, '2023-10-05 10-01-00'),
(11, 1110022, '2023-10-07 10-11-00'),
(2, 1110024, '2023-10-02 10-15-00'),
(7, 1110025, '2023-10-03 10-20-00'),
(6, 1110030, '2023-10-09 10-20-00'),
(12, 1110031, '2023-10-11 10-22-00'),
(8, 1110032, '2023-10-10 10-22-00')
