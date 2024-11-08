DROP DATABASE IF EXISTS TRAINING_DB;
CREATE DATABASE IF NOT EXISTS TRAINING_DB;
USE TRAINING_DB;


-- Tabel referensi Kategori Training
CREATE TABLE KategoriTraining (
    KategoriID INT PRIMARY KEY,
    NamaKategori VARCHAR(50) NOT NULL
);

-- Tabel referensi Lokasi
CREATE TABLE Lokasi (
    LokasiID INT PRIMARY KEY,
    NamaLokasi VARCHAR(50) NOT NULL
);

-- Tabel referensi Status
CREATE TABLE Status (
    StatusID INT PRIMARY KEY,
    NamaStatus VARCHAR(50) NOT NULL
);

-- Tabel referensi Department
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    NamaDepartment VARCHAR(50) NOT NULL
);

-- Tabel utama Training
CREATE TABLE Training (
    TrainingID INT PRIMARY KEY,
    NamaTraining VARCHAR(100) NOT NULL,
    KategoriID INT,
    TanggalMulai DATE,
    TanggalSelesai DATE,
    LokasiID INT,
    Budget DECIMAL(15, 2),
    Tahun INT,
    StatusID INT,
    JumlahPeserta INT,
    JumlahPengajar INT,
    DepartmentID INT,
    FOREIGN KEY (KategoriID) REFERENCES KategoriTraining(KategoriID),
    FOREIGN KEY (LokasiID) REFERENCES Lokasi(LokasiID),
    FOREIGN KEY (StatusID) REFERENCES Status(StatusID),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Tabel referensi Peserta
CREATE TABLE Peserta (
    PesertaID INT PRIMARY KEY,
    NamaPeserta VARCHAR(100) NOT NULL
);

-- Tabel referensi Pengajar
CREATE TABLE Pengajar (
    PengajarID INT PRIMARY KEY,
    NamaPengajar VARCHAR(100) NOT NULL
);

-- Tabel Evaluasi Peserta
CREATE TABLE EvaluasiPeserta (
    EvaluasiPesertaID INT PRIMARY KEY,
    PesertaID INT,
    TrainingID INT,
    PenilaianMateri INT,
    PenilaianPengajar INT,
    PenilaianFasilitas INT,
    WaktuFeedback DATE,
    SaranPengembangan TEXT,
    TertarikPelatihan BOOLEAN,
    FeedbackLainnya TEXT,
    FOREIGN KEY (PesertaID) REFERENCES Peserta(PesertaID),
    FOREIGN KEY (TrainingID) REFERENCES Training(TrainingID)
);

-- Tabel Evaluasi Pengajar
CREATE TABLE EvaluasiPengajar (
    EvaluasiPengajarID INT PRIMARY KEY,
    PengajarID INT,
    TrainingID INT,
    KeahlianPengajar INT,
    KemampuanMenyampaikan INT,
    Kedisiplinan INT,
    JumlahSesi INT,
    UsiaPengajar INT,
    LamaPengalaman INT,
    FeedbackLainnya TEXT,
    FOREIGN KEY (PengajarID) REFERENCES Pengajar(PengajarID),
    FOREIGN KEY (TrainingID) REFERENCES Training(TrainingID)
);

-- Tabel M&E Matrix
CREATE TABLE MEMatrix (
    MatrixID INT PRIMARY KEY,
    TrainingID INT,
    EvaluasiPenyelenggaraan INT,
    EvaluasiPeningkatanKompetensi INT,
    EvaluasiDampakPerilaku INT,
    CatatanTambahan TEXT,
    UnitKerja VARCHAR(50),
    HasilPostTrainingSurvey VARCHAR(50),
    IndikasiDampak VARCHAR(50),
    FOREIGN KEY (TrainingID) REFERENCES Training(TrainingID)
);
