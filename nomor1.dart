import 'dart:io';

void main() {
  // Harga per kilogram
  const int hargaApel = 5000; // Rp 5.000
  const int hargaJeruk = 4000; // Rp 4.000

  // Meminta input jumlah kilogram apel yang dibeli
  print('Masukkan jumlah kilogram apel yang dibeli:');
  String? inputApel = stdin.readLineSync();

  // Meminta input jumlah kilogram jeruk yang dibeli
  print('Masukkan jumlah kilogram jeruk yang dibeli:');
  String? inputJeruk = stdin.readLineSync();

  // Mengonversi input string ke int dan menghitung total harga
  try {
    int kgApel = int.parse(inputApel ?? '0'); // Mengonversi ke int
    int kgJeruk = int.parse(inputJeruk ?? '0'); // Mengonversi ke int

    // Menghitung total harga
    int totalHarga = (kgApel * hargaApel) + (kgJeruk * hargaJeruk);

    // Menampilkan total harga
    print('Total harga yang harus dibayar: Rp $totalHarga');
  } catch (e) {
    print('Input tidak valid, pastikan Anda memasukkan angka.');
  }
}
