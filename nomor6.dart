import 'dart:io';

void main() {
  // Gaji pokok
  const int gajiPokok = 4000000;
  // Bonus untuk jam kerja lebih dari 40 jam
  const int bonus = 200000;

  // Menampilkan pesan untuk meminta input jumlah jam kerja
  print('Masukkan jumlah jam kerja per minggu:');

  // Mengambil input dari pengguna
  String? input = stdin.readLineSync();

  // Mengonversi input ke angka (int)
  int jamKerja = int.tryParse(input!) ?? 0;

  // Inisialisasi total gaji
  int totalGaji = gajiPokok;

  // Menambahkan bonus jika jam kerja lebih dari 40
  if (jamKerja > 40) {
    totalGaji += bonus;
  }

  // Menampilkan total gaji
  print('Total gaji karyawan: Rp $totalGaji');
}
