# Identitas Praktikan
- **Nama:** Hana Naila Rahmadina
- **NIM:** H1D024093
- **Shift KRS:** Shift D
- **Shift Sekarang:** Shift I

## Hasil Praktikum 2

![Halaman Utama](pertemuan2/open.png)
![Halaman Hubungi Kami](pertemuan2/hubungi_kami.png)

Pada praktikum 2 ini, saya belajar mengatur warna dan ukuran huruf pada aplikasi menggunakan fitur Material Design 3, membuat dua halaman berbeda yang bisa saling terhubung saat tombolnya diclick, dan membuat kotak isian untuk mengirim pesan dan menambahkan notifikasi kecil yang muncul di bagian bawah layar.

## Hasil Praktikum 3

https://github.com/user-attachments/assets/92910c7c-4321-4e7d-ba22-3ba5906b4b52

Pada praktikum pertemuan 3 ini, saya belajar membuat *Dynamic Lists* dan *Lazy Layouts* menggunakan Jetpack Compose. Hal yang diterapkan meliputi:
- Pembuatan `Data Class` dan data *dummy* untuk Kategori dan Produk.
- Implementasi `LazyRow` untuk daftar kategori yang bisa digeser mendatar.
- Implementasi `LazyVerticalGrid` untuk daftar produk dalam format *grid* 2 kolom yang hemat memori.
- Menambahkan fungsi *filter* interaktif sehingga produk yang tampil menyesuaikan kategori yang diklik pengguna.
- Pratinjau aplikasi dalam mode terang (*Light*) dan gelap (*Dark*).

## Hasil Praktikum 4

https://github.com/user-attachments/assets/7f8ac818-093e-4def-ac0b-e153bd3c509c

Pada praktikum pertemuan 4 ini, saya belajar tentang konsep *State*, *Recomposition*, dan *UI Lifecycle* dalam arsitektur modern Jetpack Compose. Hal yang diterapkan meliputi:
- **State & Recomposition**: Mengelola data yang berubah-ubah menggunakan `mutableStateOf` dan `rememberSaveable`.
- **State Hoisting**: Memisahkan komponen UI menjadi *Stateful* (pengelola data) dan *Stateless* (penampil UI).
- **Asynchronous (Coroutine)**: Menggunakan `LaunchedEffect` untuk menjalankan simulasi *loading* pengambilan data di latar belakang.
- **Validasi Form**: Menggabungkan berbagai aturan validasi interaktif seperti pengecekan format email, minimal karakter, pilihan pada *Dropdown*, upload gambar dari galeri, hingga `Checkbox` persetujuan.
- **Navigasi (*NavController*)**: Melakukan transisi antar layar (Daftar Produk, Hubungi Kami, Detail Produk) dan mengirimkan argumen seperti parameter `productId`.
