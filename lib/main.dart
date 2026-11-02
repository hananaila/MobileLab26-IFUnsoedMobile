import 'package:flutter/material.dart';
import 'hello_world.dart';
import 'column_widget.dart';
import 'row_widget.dart';
import 'ui/produk_form.dart';
import 'ui/produk_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi Flutter Pertama",
      debugShowCheckedModeBanner: false,
      // Sesuai Modul 2 Halaman 26, default home disetel ke ProdukPage.
      home: const ProdukPage(),
      routes: {
        '/hello': (context) => const HelloWorld(),
        '/column': (context) => const ColumnWidget(),
        '/row': (context) => const RowWidget(),
        '/form': (context) => const ProdukForm(),
        '/produk': (context) => const ProdukPage(),
      },
    );
  }
}
