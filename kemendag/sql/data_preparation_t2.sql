CREATE TABLE pengiriman (
    id_pengiriman INT PRIMARY KEY,
    nama_pelanggan VARCHAR(50),
    kota_tujuan VARCHAR(50),
    tanggal_kirim DATE
);

INSERT INTO pengiriman (id_pengiriman, nama_pelanggan, kota_tujuan, tanggal_kirim) VALUES
(101, 'Andi Wijaya', 'Jakarta', '2024-07-01'),
(102, 'Budi Santoso', 'Surabaya', '2024-07-02'),
(103, 'Citra Ayu', 'Bandung', '2024-07-03'),
(104, 'Dewi Lestari', 'Yogyakarta', '2024-07-04');
