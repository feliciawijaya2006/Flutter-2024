import 'dart:io';

void main() {
  // Menampilkan pesan untuk meminta input suhu dalam Celsius
  print('Masukkan suhu dalam Celsius:');

  // Mengambil input dari pengguna
  String? input = stdin.readLineSync();

  // Mengonversi input ke angka (double)
  double celsius = double.tryParse(input!) ?? 0;

  // Menghitung suhu dalam Fahrenheit
  double fahrenheit = (9 / 5) * celsius + 32;

  // Menampilkan hasil konversi
  print('Suhu dalam Fahrenheit: $fahrenheit');
}
