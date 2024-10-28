CREATE TABLE produk (
    id INT PRIMARY KEY,
    nama_produk VARCHAR(50),       -- Nama produk perlu text cleaning
    kategori VARCHAR(30),          -- Harus konsisten (misal: kapitalisasi)
    harga VARCHAR(15),             -- Seharusnya DECIMAL
    stok VARCHAR(10),              -- Seharusnya INTEGER
    tanggal_ditambahkan VARCHAR(20) -- Seharusnya DATE
);

INSERT INTO produk (id, nama_produk, kategori, harga, stok, tanggal_ditambahkan) VALUES
(1, '  iPhone 13 Pro ', 'elektronik', '15000000', '20', '2022/01/15'),      -- Nama produk ada spasi, kategori lowercase
(2, 'Samsung Galaxy S21', 'Elektronik ', '13000000', ' 30', '15-01-2022'),  -- Kategori spasi di akhir, tanggal format tidak konsisten
(3, ' Sony  Camera ', ' elektronik', '8000000.50', NULL, '2021-10-20'),     -- Nama produk spasi ekstra, kategori lowercase
(4, 'TV Samsung QLED', 'Elektronik', '12000000', '15', '2020/08/25'),       -- Harga sebagai VARCHAR
(5, 'Dell XPS 13', 'Laptop ', '18000000', ' 10', '2019-05-12'),            -- Kategori ada spasi di akhir
(6, 'MacBook Air   ', 'Laptop', '17000000', '5', '10-06-2021'),             -- Nama produk spasi di akhir, tanggal format tidak konsisten
(7, 'HP Envy', ' LAPTOP', '15000000.99', '8', '2020-11-30'),                -- Kategori uppercase tidak konsisten
(8, ' Asus ROG ', 'Laptop', '20000000', NULL, '2018/03/18'),                -- Nama produk spasi ekstra
(9, 'Acer Aspire', ' Laptop', '14000000', '25', '2017-02-17'),              -- Kategori ada spasi di awal
(10, 'Canon DSLR Camera', 'elektronik', '9000000', NULL, '2016/09/05');     -- Nama produk ada spasi tidak perlu
