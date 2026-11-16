# Pertemuan 4: Operasi CRUD dengan API CodeIgniter 4 & Flutter Toko Kita

Dokumentasi dan catatan praktikum Modul 4 (Operasi CRUD dengan API CodeIgniter 4 dan Desain Antarmuka Mobile Toko Kita).

---

## 📌 Materi yang Dipelajari

### 1. Backend RESTful API (CodeIgniter 4)
- **Database MySQL (`toko_api`):** Disiapkan di Laragon MySQL dengan tabel:
  - `member`: Menyimpan identitas user (`id`, `nama`, `email`, `password`).
  - `member_token`: Menyimpan token sesi autentikasi (`id`, `member_id`, `auth_key`).
  - `produk`: Menyimpan data produk (`id`, `kode_produk`, `nama_produk`, `harga`).
  - File SQL tersimpan di [`database/toko_api.sql`](../database/toko_api.sql).
- **Proyek CI4 (`toko-api`):** Disimpan di repositori pada folder [`toko-api/`](../toko-api) dan disinkronkan ke direktori Laragon (`C:\laragon\www\toko-api`).
- **RESTful Resource Controller:**
  - `RestfulController`: Base controller yang mewarisi `ResourceController` untuk memformat respon JSON secara terstandar (`code`, `status`, `data`).
  - `RegistrasiController` (`/registrasi`): Menerima POST data registrasi dengan hashing password `PASSWORD_DEFAULT`.
  - `LoginController` (`/login`): Verifikasi email, password menggunakan `password_verify`, pembuatan random token, dan respon token autentikasi.
  - `ProdukController` (`/produk`): Operasi CRUD produk:
    - `create` (POST `/produk`)
    - `list` (GET `/produk`)
    - `detail` (GET `/produk/{id}`)
    - `ubah` (PUT `/produk/{id}`)
    - `hapus` (DELETE `/produk/{id}`)

### 2. Frontend Flutter (Toko Kita)
- **Model:** Parsing objek JSON ke Dart object dengan *factory constructor* `fromJson`:
  - `Login` (`model/login.dart`)
  - `Registrasi` (`model/registrasi.dart`)
  - `Produk` (`model/produk.dart`)
- **Antarmuka Pengguna (UI):**
  - `RegistrasiPage` (`ui/registrasi_page.dart`): Form registrasi lengkap dengan validasi form (nama minimal 3 karakter, regex validasi format email, password minimal 6 karakter, dan verifikasi konfirmasi password).
  - `LoginPage` (`ui/login_page.dart`): Form login dengan validasi email/password, tombol masuk, dan navigasi `InkWell` menuju halaman registrasi.
  - `ProdukPage` (`ui/produk_page.dart`): Menampilkan daftar produk menggunakan widget `Card` & `ListTile`, tombol `+` di AppBar untuk menambah produk, serta drawer navigasi untuk `Logout`.
  - `ProdukForm` (`ui/produk_form.dart`): Form dinamis ganda (*dual-purpose*) yang otomatis mendeteksi mode **TAMBAH PRODUK** atau **UBAH PRODUK** berdasarkan ada/tidaknya parameter model `Produk`.
  - `ProdukDetail` (`ui/produk_detail.dart`): Menampilkan detail produk lengkap dengan tombol **EDIT** (membuka form mode ubah) dan **DELETE** (menampilkan dialog konfirmasi hapus).

---

## 📁 Daftar File Kode

### Backend (`toko-api/`)
- `app/Config/Database.php` (Konfigurasi MySQL Laragon)
- `app/Config/Routes.php` (Rute API)
- `app/Controllers/RestfulController.php`
- `app/Controllers/RegistrasiController.php`
- `app/Controllers/LoginController.php`
- `app/Controllers/ProdukController.php`
- `app/Models/MRegistrasi.php`
- `app/Models/MMember.php`
- `app/Models/MLogin.php`
- `app/Models/MProduk.php`
- `database/toko_api.sql`

### Frontend (`Pertemuan 4/` dan `lib/pertemuan4/`)
- `model/login.dart`
- `model/registrasi.dart`
- `model/produk.dart`
- `ui/registrasi_page.dart`
- `ui/login_page.dart`
- `ui/produk_form.dart`
- `ui/produk_detail.dart`
- `ui/produk_page.dart`

---

## 📸 Checklist Bukti Screenshot (Untuk Laporan Praktikum)

### A. Pengujian Backend via Postman / REST Client
| No | Endpoint & Method | URL Pengujian | Body / Parameter | Status Bukti |
|:---:|:---|:---|:---|:---:|
| 1 | POST Registrasi | `http://localhost/toko-api/public/registrasi` | JSON: `{"nama": "...", "email": "...", "password": "..."}` | [ ] Belum di-SS |
| 2 | POST Login | `http://localhost/toko-api/public/login` | JSON: `{"email": "...", "password": "..."}` | [ ] Belum di-SS |
| 3 | POST Create Produk | `http://localhost/toko-api/public/produk` | JSON: `{"kode_produk": "A001", "nama_produk": "Kamera", "harga": 5000000}` | [ ] Belum di-SS |
| 4 | GET List Produk | `http://localhost/toko-api/public/produk` | Tanpa body (menampilkan array semua produk) | [ ] Belum di-SS |
| 5 | GET Show Detail Produk | `http://localhost/toko-api/public/produk/1` | Menampilkan 1 produk sesuai ID | [ ] Belum di-SS |
| 6 | PUT Update Produk | `http://localhost/toko-api/public/produk/1` | JSON data pembaruan kode/nama/harga | [ ] Belum di-SS |
| 7 | DELETE Hapus Produk | `http://localhost/toko-api/public/produk/1` | Menghapus data produk sesuai ID | [ ] Belum di-SS |

> **Catatan Server Laragon:**  
> Jika Apache/Nginx di Laragon dijalankan, URL dapat diakses via `http://localhost/toko-api/public/...` atau `http://toko-api.test/...`.  
> Atau bisa dijalankan secara instan dengan CLI:  
> `cd toko-api && php spark serve` (lalu akses via `http://localhost:8080/...`).

---

### B. Tampilan Antarmuka Flutter (Emulator / Perangkat)
| No | Halaman / Fitur | Lokasi File | Elemen Kunci yang Harus Terlihat di SS | Status Bukti |
|:---:|:---|:---|:---|:---:|
| 1 | Form Login Toko Kita | `lib/pertemuan4/ui/login_page.dart` | AppBar "Login", TextField Email, Password, tombol Login, link teks biru "Registrasi" | [ ] Belum di-SS |
| 2 | Form Registrasi | `lib/pertemuan4/ui/registrasi_page.dart` | AppBar "Registrasi", Input Nama, Email, Password, Konfirmasi Password, tombol Registrasi | [ ] Belum di-SS |
| 3 | Validasi Form Error | `lib/pertemuan4/ui/registrasi_page.dart` | Pesan error merah ketika field kosong atau format salah | [ ] Belum di-SS |
| 4 | List Data Produk | `lib/pertemuan4/ui/produk_page.dart` | AppBar "List Produk" dengan tombol icon `+`, daftar produk Kamera, Kulkas, Mesin Cuci | [ ] Belum di-SS |
| 5 | Drawer Menu Toko Kita | `lib/pertemuan4/ui/produk_page.dart` | Drawer terbuka dengan header dan opsi menu "Logout" | [ ] Belum di-SS |
| 6 | Form Tambah Produk | `lib/pertemuan4/ui/produk_form.dart` | AppBar title "TAMBAH PRODUK", form kosong, tombol "SIMPAN" | [ ] Belum di-SS |
| 7 | Detail Produk | `lib/pertemuan4/ui/produk_detail.dart` | AppBar "Detail Produk", teks Kode, Nama, Harga, tombol hijau EDIT & tombol merah DELETE | [ ] Belum di-SS |
| 8 | Form Ubah Produk | `lib/pertemuan4/ui/produk_form.dart` | AppBar title "UBAH PRODUK", form terisi data produk, tombol "UBAH" | [ ] Belum di-SS |
| 9 | Dialog Konfirmasi Hapus | `lib/pertemuan4/ui/produk_detail.dart` | Popup AlertDialog "Yakin ingin menghapus data ini?", tombol "Ya" dan "Batal" | [ ] Belum di-SS |

---

## 🖼️ Tempat Menempelkan Screenshot
<!-- Tempelkan gambar bukti screenshot Anda di bawah ini -->
<!-- Contoh: ![Screenshot List Produk](screenshot/modul4_listproduk.png) -->
