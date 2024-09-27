// main.dart
import 'dart:io';
import 'body.dart';
import 'dart:math';

void main() {
  bool ulang = true;
  final Body body = Body();

  body.loop.loop(() => ulang, () {
    print("Masukkan angka: ");
    int? angka = int.parse(stdin.readLineSync()!);

    List<int> arrangka = List.generate(angka + 1, (_) {
      var random = Random().nextInt(100);
      print(random);
      return random;
    });

    print("Pilihan \n1. Bubble Sort\n2. Inversi\n3. Shuffle\nMasukkan pilihan anda:");
    int? pilihan = int.parse(stdin.readLineSync()!);
    DateTime startTime = DateTime.now();

    switch (pilihan) {
      case 1:
        body.bubbleSort(arrangka, arrangka.length);
        break;
      case 2:
        body.inverse(arrangka, arrangka.length);
        break;
      case 3:
        body.shuffle(arrangka, arrangka.length);
        break;
      default:
        print("Pilihan tidak valid!");
    }

    DateTime endTime = DateTime.now();
    Duration executionTime = endTime.difference(startTime);

    print("Hasil Gabungan Array: ${arrangka} \nWaktu Untuk Eksekusi: ${executionTime.inMilliseconds} ms");

    print("Apakah ingin cetak bentuk piramida? (Y/N)");
    String? inputpi = stdin.readLineSync()?.toUpperCase();

    if (inputpi == 'Y') {
      body.cetakPiramida(arrangka);
    }

    print("Apakah ingin mengulang? (Y/N)");
    String? inputulang = stdin.readLineSync()?.toUpperCase();

    if (inputulang == 'N') {
      ulang = false;
    }
  });
}
