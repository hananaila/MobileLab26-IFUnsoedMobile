import 'package:flutter/material.dart';
import '../model/produk.dart';
import 'produk_form.dart';

// ignore: must_be_immutable
class ProdukDetail extends StatefulWidget {
  Produk? produk;

  ProdukDetail({super.key, this.produk});

  @override
  // ignore: library_private_types_in_public_api
  _ProdukDetailState createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              "Kode : ${widget.produk?.kodeProduk ?? ''}",
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 8),
            Text(
              "Nama : ${widget.produk?.namaProduk ?? ''}",
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8),
            Text(
              "Harga : Rp. ${widget.produk?.hargaProduk?.toString() ?? ''}",
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 20),
            _tombolHapusEdit(),
          ],
        ),
      ),
    );
  }

  Widget _tombolHapusEdit() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Tombol Edit
        OutlinedButton(
          style: OutlinedButton.styleFrom(foregroundColor: Colors.green),
          child: const Text("EDIT"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProdukForm(
                  produk: widget.produk!,
                ),
              ),
            );
          },
        ),
        const SizedBox(width: 10),
        // Tombol Hapus
        OutlinedButton(
          style: OutlinedButton.styleFrom(foregroundColor: Colors.red),
          child: const Text("DELETE"),
          onPressed: () => confirmHapus(),
        ),
      ],
    );
  }

  void confirmHapus() {
    AlertDialog alertDialog = AlertDialog(
      content: const Text("Yakin ingin menghapus data ini?"),
      actions: [
        // Tombol hapus
        OutlinedButton(
          child: const Text("Ya"),
          onPressed: () {
            Navigator.pop(context); // Tutup dialog
            Navigator.pop(context); // Kembali ke list
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Data produk berhasil dihapus")),
            );
          },
        ),
        // Tombol batal
        OutlinedButton(
          child: const Text("Batal"),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );

    showDialog(builder: (context) => alertDialog, context: context);
  }
}
