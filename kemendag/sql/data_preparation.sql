CREATE TABLE pelanggan (
    id INT PRIMARY KEY,
    nama VARCHAR(50),
    umur INT,
    alamat VARCHAR(100),
    email VARCHAR(50),
    no_hp VARCHAR(20),
    kota VARCHAR(50)  
);

INSERT INTO pelanggan (id, nama, umur, alamat, email, no_hp, kota) VALUES
(1, 'Andi', 25, 'Jl. Merdeka 1', 'andi@example.com', '081234567890', 'Jakarta'),
(2, 'Andi', 25, 'Jl. Merdeka 1', 'andi@example.com', '081234567890', 'Jakarta'),
(3, 'Budi', NULL, 'Jl. Sudirman 3', 'budi@example.com', '081234567891', 'Bandung'),  
(4, 'Citra', 30, 'Jl. Sudirman 3', 'citra@example.com', NULL, 'Bandung'),     
(5, 'Andi', 25, 'Jl. Merdeka 1', 'andi@example.com', '081234567890', 'Jakarta'),
(6, 'Eka', 22, NULL, 'eka@example.com', '081234567891', 'Jakarta'),            
(7, NULL, 29, 'Jl. Merdeka 2', 'fajar@example.com', NULL, 'Surabaya'),       
(8, 'Gina', NULL, 'Jl. Tanah Abang 5', 'gina@example.com', '081234567893', 'Bandung'),
(9, NULL, NULL, 'Jl. Tanah Abang 5', NULL, NULL, 'Bali'),                     
(10, 'Hendra', 32, 'Jl. Merdeka 1', 'hendra@example.com', '081234567894', 'Jakarta'),
(11, 'Budi', 28, 'Jl. Merdeka 1', 'budi@example.com', NULL, 'Jakarta');       


