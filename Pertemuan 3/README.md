# Pertemuan 3: Routes, Side Menu, Login dan Local Storage

Dokumentasi dan catatan praktikum Modul 3 (Routes, Side Menu, Login dan Local Storage Framework Flutter).

---

## 📌 Materi yang Dipelajari
1. **Local Storage (SharedPreferences):** Menambahkan dependency `shared_preferences: ^2.0.17` pada `pubspec.yaml` untuk menyimpan data preferensi secara persisten di penyimpanan lokal perangkat.
2. **Halaman Login Sederhana:** Merancang `LoginPage` dengan input form username dan password, serta method `_saveUsername()` untuk menyimpan username login ke `SharedPreferences`.
3. **Feedback Dialog Alert:** Menampilkan dialog popup konfirmasi (`AlertDialog`) menggunakan fungsi reusable `_showDialog(pesan, alamat)`.
4. **Navigasi Rute (`Navigator.push`):** Mengalihkan halaman ke `HomePage` saat autentikasi berhasil (username `admin` & password `admin`), atau kembali ke `LoginPage` jika salah.
5. **Membaca Data Local Storage:** Mengambil data username yang tersimpan menggunakan method `_loadUsername()` (`prefs.getString('username')`) dan menampilkannya secara dinamis di `HomePage`.
6. **Side Menu (Drawer):** Membuat menu navigasi samping (`Sidemenu`) menggunakan widget `Drawer`, `DrawerHeader`, dan `ListTile` untuk berpindah rute antara `HomePage` dan `AboutPage`.
7. **Halaman About:** Membuat halaman statis `AboutPage` dengan integrasi komponen drawer `Sidemenu` yang seragam.

---

## 📁 Daftar File Kode
File berada di `Pertemuan 3/` dan `lib/pertemuan3/`:
- `login_page.dart`
- `home_page.dart`
- `sidemenu.dart`
- `about_page.dart`

---

## 📸 Checklist Bukti Screenshot (Untuk Laporan Praktikum)

| No | Tampilan / Fitur | Lokasi File | Elemen Kunci yang Harus Terlihat di SS | Status Bukti |
|:---:|:---|:---|:---|:---:|
| 1 | Form Login | `lib/pertemuan3/login_page.dart` | AppBar "Login", TextField Username, TextField Password, tombol Login | [ ] Belum di-SS |
| 2 | Dialog Login Berhasil | `lib/pertemuan3/login_page.dart` | Pop up AlertDialog bertuliskan "Anda Berhasil Login" dan tombol OK | [ ] Belum di-SS |
| 3 | Dialog Login Gagal | `lib/pertemuan3/login_page.dart` | Pop up AlertDialog bertuliskan "Username dan Password Salah" | [ ] Belum di-SS |
| 4 | Halaman Home (Data User) | `lib/pertemuan3/home_page.dart` | AppBar "Home Page", teks di tengah: "Ini adalah halaman User admin" | [ ] Belum di-SS |
| 5 | Side Menu Drawer Terbuka | `lib/pertemuan3/sidemenu.dart` | Drawer terbuka di sisi kiri: header "Sidemenu", menu icon "Home", menu icon "About" | [ ] Belum di-SS |
| 6 | Halaman About | `lib/pertemuan3/about_page.dart` | AppBar "About Page", teks "Ini adalah halaman About" beserta tombol drawer | [ ] Belum di-SS |

---

## 🖼️ Tempat Menempelkan Screenshot
<!-- Tempelkan gambar bukti screenshot Anda di bawah ini -->
<!-- Contoh: ![Screenshot Login](screenshot/modul3_login.png) -->
