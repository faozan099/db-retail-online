mysql> SELECT
    -> users.username AS user,
    -> AVG(products.harga) AS rata_rata_transaksi
    -> FROM orders
    -> JOIN transaksi ON orders.transaksi_id = transaksi.transaksi_id
    -> JOIN carts ON transaksi.cart_id = carts.cart_id
    -> JOIN users ON carts.user_id = users.user_id
    -> JOIN products ON carts.product_id = products.product_id
    -> GROUP BY user;
    
+---------+---------------------+
| user    | rata_rata_transaksi |
+---------+---------------------+
| Angga   |           4666.6667 |
| Avansya |           3666.6667 |
| Aji     |           4500.0000 |
| Novri   |           5000.0000 |
| Saputra |           1833.3333 |
+---------+---------------------+
5 rows in set (0.00 sec)
