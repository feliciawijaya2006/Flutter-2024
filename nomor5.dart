import 'dart:io';

void main() {
  // Menampilkan pesan untuk meminta input jumlah jam parkir
  print('Masukkan jumlah jam parkir:');

  // Mengambil input dari pengguna
  String? input = stdin.readLineSync();

  // Mengonversi input ke angka (int)
  int jamParkir = int.tryParse(input!) ?? 0;

  // Inisialisasi total biaya
  int totalBiaya = 0;

  // Menghitung total biaya parkir
  if (jamParkir <= 2) {
    totalBiaya = jamParkir * 2000; // Rp 2.000 per jam untuk 2 jam pertama
  } else {
    totalBiaya = (2 * 2000) + ((jamParkir - 2) * 1000); // Rp 2.000 untuk 2 jam + Rp 1.000 untuk jam berikutnya
  }

  // Menampilkan total biaya parkir
  print('Total biaya parkir: Rp $totalBiaya');
}
