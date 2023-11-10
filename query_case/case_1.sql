mysql> SELECT
    -> users.username AS nama_pelanggan,
    -> products.name AS nama_product
    -> FROM carts
    -> INNER JOIN users ON carts.user_id = users.user_id
    -> INNER JOIN products ON carts.product_id = products.product_id
    -> WHERE users.user_id = 1;
    
+----------------+--------------+
| nama_pelanggan | nama_product |
+----------------+--------------+
| Angga          | Pop-ice      |
| Angga          | Pocari Sweet |
| Angga          | Sprit        |
+----------------+--------------+
3 rows in set (0.00 sec)