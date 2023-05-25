-- query sql kasus
-- 1 customer membeli 3 barang yang berbeda
SELECT p.nama AS 'Nama customer'
FROM customer p
JOIN transaction t ON p.id = t.customer_id
GROUP BY p.id
HAVING COUNT(DISTINCT t.product_id) = 3;

-- Melihat category barang yang paling banyak barangnya
SELECT k.nama AS 'Nama category', COUNT(*) AS 'Jumlah Barang'
FROM product p
JOIN category k ON p.category_id = k.id
GROUP BY k.id
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Nominal rata-rata transaction yang dilakukan oleh customer dalam 1 bulan terakhir
SELECT customer_id, AVG(total_price) AS rata_rata_transaction
FROM transaction
WHERE date >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY customer_id;

-- Melihat 3 product yang paling sering dibeli oleh pelanggan
SELECT pr.nama AS 'Nama product', COUNT(*) AS 'Jumlah Pembelian'
FROM transaction t
JOIN product pr ON t.product_id = pr.id
GROUP BY t.product_id
ORDER BY COUNT(*) DESC
LIMIT 3;