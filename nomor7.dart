void main() {
  // Definisikan urutan tugas berdasarkan prioritas
  List<String> tugas = [];

  // Tugas dengan urutan penyelesaian
  tugas.add('Tugas A'); // Harus diselesaikan terlebih dahulu
  tugas.add('Tugas B'); // Harus diselesaikan setelah Tugas A
  tugas.add('Tugas C'); // Harus diselesaikan setelah Tugas A dan B
  tugas.add('Tugas D'); // Harus diselesaikan setelah Tugas C
  tugas.add('Tugas E'); // Bisa diselesaikan kapan saja

  // Menampilkan urutan penyelesaian tugas
  print('Urutan penyelesaian tugas yang efisien:');
  for (var tugas in tugas) {
    print(tugas);
  }
}
