mysql> SELECT
    -> products.name AS nama_barang,
    -> COUNT(*) AS jumlah_pembelian
    -> FROM carts
    -> INNER JOIN products ON carts.product_id = products.product_id
    -> GROUP BY nama_barang
    -> ORDER BY jumlah_pembelian DESC
    -> LIMIT 3;
    
+--------------+------------------+
| nama_barang  | jumlah_pembelian |
+--------------+------------------+
| Pop-ice      |                3 |
| Pocari Sweet |                3 |
| Sprit        |                2 |
+--------------+------------------+
3 rows in set (0.01 sec)