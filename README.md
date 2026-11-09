# Identitas Praktikan
- **Nama:** Hana Naila Rahmadina
- **NIM:** H1D024093
- **Shift KRS:** Shift D
- **Shift Sekarang:** Shift I

---

## Hasil Praktikum Modul 1 (Bahasa Pemrograman Dart)

Pada praktikum Modul 1 ini, saya belajar dasar-dasar bahasa pemrograman Dart sebagai persiapan untuk menggunakan framework Flutter. Materi yang dipelajari dan dipraktikkan meliputi:
- Menjalankan program dasar Dart dan menampilkan teks menggunakan perintah `print`.
- Menggunakan berbagai tipe data seperti `int`, `double`, `String`, `bool`, dan `var`.
- Menerapkan perhitungan matematika, logika perbandingan, serta kontrol alur program dengan percabangan `if-else` dan perulangan `for` maupun `while`.
- Membuat fungsi mandiri dan menerapkan konsep OOP (*Object-Oriented Programming*) dengan membuat class `Mahasiswa`.
- Menggunakan library bawaan `dart:math`, menangani error dengan blok `try-catch`, serta membuat fungsi asinkronus menggunakan `Future`, `async`, dan `await`.

---

## Hasil Praktikum Modul 2 (Pengenalan & Desain Framework Flutter)

<!-- Ganti baris di bawah ini dengan link video rekaman atau screenshot demo aplikasi Anda -->
<!-- Format: https://github.com/user-attachments/assets/<ID-FILE> -->

Pada praktikum Modul 2 ini, saya belajar dasar-dasar pengembangan aplikasi mobile menggunakan framework Flutter, mulai dari memahami struktur proyek hingga merancang antarmuka (UI). Hal-hal yang telah saya terapkan meliputi:
- Membuat tampilan awal aplikasi (*Hello World*) menggunakan `StatelessWidget`.
- Mengatur tata letak elemen antarmuka secara vertikal dengan widget `Column` dan horizontal dengan widget `Row`.
- Membuat form input data barang (`ProdukForm`) menggunakan `StatefulWidget` dan `TextEditingController` untuk menangkap input kode, nama, dan harga produk.
- Menerapkan navigasi antar halaman menggunakan `Navigator.push` untuk mengirimkan data produk dari form ke halaman `ProdukDetail`.
- Menampilkan daftar data produk secara terstruktur menggunakan widget `ListView` dengan tampilan `Card` dan `ListTile` pada `ProdukPage`.

---

## Hasil Praktikum Modul 3 (Routes, Side Menu, Login dan Local Storage)

<!-- Ganti baris di bawah ini dengan link video rekaman atau screenshot demo aplikasi Anda -->
<!-- Format: https://github.com/user-attachments/assets/<ID-FILE> -->

Pada praktikum Modul 3 ini, saya belajar mengimplementasikan sistem autentikasi sederhana, penyimpanan data lokal, navigasi rute, serta menu navigasi samping (side menu/drawer) pada framework Flutter. Hal-hal yang telah saya terapkan meliputi:
- Menambahkan dan mengonfigurasi dependencies pihak ketiga, yaitu `shared_preferences`, pada file `pubspec.yaml` untuk keperluan penyimpanan data lokal (*local storage*) di perangkat.
- Membuat halaman login (`LoginPage`) menggunakan `StatefulWidget` dan `TextEditingController` untuk menerima input username dan password pengguna.
- Menyimpan sesi username pengguna ke dalam local storage menggunakan `SharedPreferences.setString` ketika proses autentikasi berhasil.
- Menampilkan dialog notifikasi (`AlertDialog`) melalui fungsi `_showDialog` untuk memberikan umpan balik informasi keberhasilan atau kegagalan login.
- Mengalihkan pengguna ke halaman beranda (`HomePage`) setelah login berhasil menggunakan navigasi `Navigator.push` dan `MaterialPageRoute`.
- Membaca dan menampilkan kembali username yang tersimpan secara dinamis pada `HomePage` menggunakan fungsi `SharedPreferences.getString`.
- Membuat menu navigasi samping atau drawer (`Sidemenu`) menggunakan widget `Drawer`, `DrawerHeader`, dan `ListTile` untuk berpindah rute antar halaman (`HomePage` dan `AboutPage`).
- Membuat halaman informasi (`AboutPage`) yang dilengkapi dengan komponen drawer yang sama sehingga navigasi antar halaman berlangsung secara konsisten.
