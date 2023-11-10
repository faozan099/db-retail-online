mysql> SELECT
    -> kategori, COUNT(*) AS jumlah_barang
    -> FROM products
    -> GROUP BY kategori
    -> ORDER BY jumlah_barang DESC
    -> LIMIT 1;
    
+----------+---------------+
| kategori | jumlah_barang |
+----------+---------------+
| Minuman  |             4 |
+----------+---------------+
1 row in set (0.00 sec)
