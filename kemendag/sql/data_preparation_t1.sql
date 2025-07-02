CREATE TABLE data_latihan (
    id INT PRIMARY KEY,
    kode_transaksi VARCHAR(20),
    nama_produk VARCHAR(50),
    tanggal_transaksi DATE
);

INSERT INTO data_latihan (id, kode_transaksi, nama_produk, tanggal_transaksi) VALUES
(1, 'TRX20240701A', 'laptop ASUS', '2024-07-01'),
(2, 'TRX20240615B', 'Printer Epson', '2024-06-15'),
(3, 'TRX20240520C', 'Monitor Samsung', '2024-05-20'),
(4, 'TRX20240410D', 'keyboard logitech', '2024-04-10'),
(5, 'TRX20240305E', 'Mouse Razer', '2024-03-05');
