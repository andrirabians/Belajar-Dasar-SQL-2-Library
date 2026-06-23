CREATE DATABASE tugas_2;
show databases;

USE tugas_2;



CREATE TABLE data_anggota(
	id_anggota INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL UNIQUE
	);
	
CREATE TABLE data_buku(
	id_buku INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
	stok INTEGER NOT NULL CHECK (stok >=1)
	);

CREATE TABLE data_pinjam(
	id_pinjam INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	tanggal_pinjam DATE NOT NULL,
	
	anggota_id INTEGER,
	CONSTRAINT fk_anggota FOREIGN KEY (anggota_id) REFERENCES data_anggota(id_anggota) ON DELETE CASCADE,
	buku_id INTEGER,
	CONSTRAINT fk_buku FOREIGN KEY (buku_id) REFERENCES data_buku(id_buku)
	);
	
DESC data_pinjam;
DESC data_buku;
DESC data_anggota;

INSERT INTO data_anggota (id_anggota, name , email) VALUES (null, "Dimas", "dimas@email.com");
INSERT INTO data_anggota (id_anggota, name , email) VALUES (null, "Nisa", "nisa@email.com");
INSERT INTO data_buku (id_buku, name, stok) VALUES(null, "Atomic Habits", 5);
INSERT INTO data_buku (id_buku, name, stok) VALUES(null, "Laskar Pelangi", 3);
SELECT * FROM data_pinjam;
INSERT INTO data_pinjam (id_pinjam, tanggal_pinjam, anggota_id, buku_id) VALUES(null, "2026-06-23", 1,1);
INSERT INTO data_pinjam (id_pinjam, tanggal_pinjam, anggota_id, buku_id) VALUES(null, "2026-06-20", 2,2);
INSERT INTO data_pinjam (id_pinjam, tanggal_pinjam, anggota_id, buku_id) VALUES(null, "2026-06-23", 1,2);

SELECT data_anggota.name, data_anggota.email, data_buku.name, data_pinjam.tanggal_pinjam FROM data_pinjam INNER JOIN data_anggota ON data_pinjam.anggota_id=data_anggota.id_anggota INNER JOIN data_buku ON data_pinjam.buku_id=data_buku.id_buku