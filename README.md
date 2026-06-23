# Belajar-Dasar-SQL-2
Mempelajari dasar membuat database menggunakan mysql 

# Studi Kasus: Sistem Peminjaman Buku Perpustakaan
Latar Belakang Sebuah perpustakaan komunitas selama ini mengandalkan kartu kertas untuk mencatat peminjaman buku. Seiring bertambahnya koleksi, staf perpustakaan mulai kesulitan melacak siapa yang meminjam buku apa, dan sering terjadi kesalahan pencatatan. Kamu diminta untuk merancang basis data digital agar profil anggota, katalog buku, dan riwayat peminjaman terintegrasi dengan rapi.

Tahap 1 & 2: Desain Aturan Bisnis (Pembuatan Tabel)
Sistem perpustakaan ini membutuhkan tiga komponen utama: data anggota perpustakaan, data koleksi buku, dan catatan transaksi peminjaman. Staf perpustakaan memberikan aturan-aturan berikut yang harus diterapkan secara ketat pada basis data:
Setiap anggota harus didaftarkan dengan nama dan alamat email. Email ini berfungsi sebagai nomor identitas digital, sehingga tidak boleh ada email yang didaftarkan dua kali.
Setiap buku memiliki judul dan jumlah stok fisik yang tersedia di rak. Sistem harus memastikan bahwa jumlah stok buku ini tidak akan pernah bernilai negatif (minus).
Sistem wajib mencatat riwayat peminjaman: siapa anggota yang meminjam, buku apa yang dipinjam, dan kapan tanggal peminjamannya.
Data harus terhubung dengan aman. Jika seorang anggota berhenti dari perpustakaan dan datanya dihapus, seluruh riwayat peminjamannya di masa lalu harus otomatis terhapus agar tidak menjadi data yatim (orphan data) di dalam sistem.

Tahap 3: Pengisian Data Uji
Setelah struktur tabel siap, staf perpustakaan memberikan beberapa data awal untuk diuji coba ke dalam sistem barumu.

Data Anggota:
Dimas (dimas@email.com)
Nisa (nisa@email.com)

Data Buku:
Atomic Habits (Stok: 5)
Laskar Pelangi (Stok: 3)

Data Peminjaman:
Dimas meminjam buku Atomic Habits.
Nisa meminjam buku Laskar Pelangi.
Dimas juga meminjam buku Laskar Pelangi.

Instruksi: Buatlah sintaks SQL untuk memasukkan seluruh data di atas ke dalam tabel yang sesuai. Analisis urutan pengeksekusian perintah INSERT agar tidak membentur aturan Foreign Key yang sudah kamu buat.
Tahap 4: Penarikan Laporan Peminjaman
Kepala perpustakaan ingin melihat laporan daftar buku yang sedang dipinjam hari ini. Ia kesulitan membaca tabel mentah yang hanya berisi angka ID, dan meminta laporan yang menampilkan teks secara langsung.
Instruksi: Tuliskan sintaks SQL menggunakan perintah JOIN untuk menggabungkan ketiga tabel yang ada menjadi satu laporan yang mudah dibaca. Laporan tersebut harus menampilkan kolom-kolom berikut secara berdampingan:
Nama Anggota | Email Anggota | Judul Buku | Tanggal Pinjam



<img width="534" height="230" alt="image" src="https://github.com/user-attachments/assets/3a1ff7c4-04a6-4e5d-aaba-7d3582abe011" />
