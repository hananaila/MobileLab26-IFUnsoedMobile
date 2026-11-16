import 'package:flutter/material.dart';

// Import Pertemuan 2
import 'pertemuan2/hello_world.dart' as p2_hello;
import 'pertemuan2/column_widget.dart' as p2_column;
import 'pertemuan2/row_widget.dart' as p2_row;
import 'pertemuan2/ui/produk_form.dart' as p2_form;
import 'pertemuan2/ui/produk_page.dart' as p2_page;

// Import Pertemuan 3
import 'pertemuan3/login_page.dart' as p3;

// Import Pertemuan 4
import 'pertemuan4/ui/login_page.dart' as p4_login;
import 'pertemuan4/ui/produk_page.dart' as p4_produk;

// ============================================================================
// TIPS PENGUJIAN / SCREENSHOT PER PERTEMUAN:
// Secara default, aplikasi membuka 'DashboardPraktikum' sehingga Anda bisa
// langsung mengklik dan mengambil screenshot seluruh halaman modul 2, 3, dan 4.
//
// Jika ingin langsung membuka modul tertentu saat 'flutter run':
// Ganti 'home: const DashboardPraktikum()' dengan salah satu di bawah:
// - home: const p2_page.ProdukPage(), // Pertemuan 2
// - home: const p3.LoginPage(),       // Pertemuan 3
// - home: const p4_login.LoginPage(), // Pertemuan 4
// ============================================================================

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum Pemrograman Mobile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const DashboardPraktikum(),
    );
  }
}

class DashboardPraktikum extends StatelessWidget {
  const DashboardPraktikum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Praktikum Mobile'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildCard(
            context,
            title: 'Pertemuan 2: Desain Flutter',
            subtitle: 'Widget dasar, layout Kolom & Baris, serta Form Produk',
            color: Colors.blue.shade50,
            icon: Icons.widgets_outlined,
            actions: [
              _buildButton(
                context,
                label: '1. Hello World',
                target: const p2_hello.HelloWorld(),
              ),
              _buildButton(
                context,
                label: '2. Widget Column',
                target: const p2_column.ColumnWidget(),
              ),
              _buildButton(
                context,
                label: '3. Widget Row',
                target: const p2_row.RowWidget(),
              ),
              _buildButton(
                context,
                label: '4. Form Produk',
                target: const p2_form.ProdukForm(),
              ),
              _buildButton(
                context,
                label: '5. List Data Produk',
                target: const p2_page.ProdukPage(),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _buildCard(
            context,
            title: 'Pertemuan 3: Routes & Storage',
            subtitle: 'Login, SharedPreferences, Alert, dan Side Menu Drawer',
            color: Colors.green.shade50,
            icon: Icons.route_outlined,
            actions: [
              _buildButton(
                context,
                label: 'Buka Alur Login & Side Menu (Modul 3)',
                target: const p3.LoginPage(),
                isPrimary: true,
              ),
            ],
          ),
          const SizedBox(height: 16),
          _buildCard(
            context,
            title: 'Pertemuan 4: CRUD & Toko Kita',
            subtitle: 'Model TokoKita, Form Registrasi, Login, dan CRUD Produk',
            color: Colors.orange.shade50,
            icon: Icons.storefront_outlined,
            actions: [
              _buildButton(
                context,
                label: '1. Halaman Login & Registrasi (Modul 4)',
                target: const p4_login.LoginPage(),
                isPrimary: true,
              ),
              _buildButton(
                context,
                label: '2. Katalog & CRUD Produk (Toko Kita)',
                target: const p4_produk.ProdukPage(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required Color color,
    required IconData icon,
    required List<Widget> actions,
  }) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 28, color: Colors.blueGrey.shade800),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey.shade900,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              subtitle,
              style: TextStyle(fontSize: 13, color: Colors.blueGrey.shade700),
            ),
            const Divider(height: 24),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: actions,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(
    BuildContext context, {
    required String label,
    required Widget target,
    bool isPrimary = false,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isPrimary ? Colors.blue.shade700 : Colors.white,
        foregroundColor: isPrimary ? Colors.white : Colors.black87,
        elevation: isPrimary ? 2 : 1,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => target),
        );
      },
      child: Text(label),
    );
  }
}
