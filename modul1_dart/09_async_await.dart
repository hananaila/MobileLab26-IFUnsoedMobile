Future<void> main() async {
  print("Memulai pemrosesan...");
  await prosesData();
  print("Pemrosesan selesai.");
}

Future<void> prosesData() async {
  await Future.delayed(const Duration(seconds: 2));
  print("Data diproses.");
}
