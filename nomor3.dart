import 'dart:io';

void main() {
  const double pi = 3.14; // Nilai π

  // Meminta input diameter lingkaran
  print('Masukkan diameter lingkaran:');
  String? inputDiameter = stdin.readLineSync();

  // Mengonversi input string ke double dan menghitung luas
  try {
    double diameter = double.parse(inputDiameter ?? '0'); // Mengonversi ke double
    double radius = diameter / 2; // Menghitung jari-jari
    double luas = pi * radius * radius; // Menghitung luas lingkaran

    // Menampilkan luas lingkaran
    print('Luas lingkaran dengan diameter $diameter adalah: $luas');
  } catch (e) {
    print('Input tidak valid, pastikan Anda memasukkan angka.');
  }
}



