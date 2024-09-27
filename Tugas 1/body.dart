// body.dart
import 'dart:math';
import 'dart:io';
import 'loop.dart';

class Body {
  final Loop loop = Loop();

  void bubbleSort(List<int> arr, int lenarr) {
    bool swapped = true;

    loop.loop(() => swapped, () {
      swapped = false;
      int i = 0;

      loop.loop(() => i < lenarr - 1, () {
        if (arr[i] > arr[i + 1]) {
          int temp = arr[i];
          arr[i] = arr[i + 1];
          arr[i + 1] = temp;
          swapped = true;
        }
        i++;
      });

      lenarr--;
    });
  }

  void inverse(List<int> arr, int lenarr) {
    double jumbagi = lenarr.isEven ? lenarr / 2 : (lenarr - 1) / 2;
    int awal = 0;
    int akhir = lenarr - 1;

    loop.loop(() => awal < jumbagi, () {
      int temp = arr[awal];
      arr[awal] = arr[akhir];
      arr[akhir] = temp;
      awal++;
      akhir--;
    });
  }

  void shuffle(List<int> arr, int lenarr) {
    int i = lenarr - 1;

    loop.loop(() => i > 0, () {
      int j = Random().nextInt(i + 1);

      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;

      i--;
    });
  }

  void cetakElemenArray(List<int> arrangka) {
    print("Elemen-elemen array:");
    for (var elemen in arrangka) {
      print(elemen);
    }
  }

  void cetakPiramida(List<int> arrangka) {
    int panjang = arrangka.length;
    int index = 0;
    int level = 0;

    while (index < panjang) {
      for (int j = panjang - (level + 1); j > 0; j--) {
        stdout.write("  ");
      }

      for (int k = 0; k <= level && index < panjang; k++) {
        stdout.write(arrangka[index].toString() + " ");
        index++;
      }
      print("");
      level++;
    }
  }
}
