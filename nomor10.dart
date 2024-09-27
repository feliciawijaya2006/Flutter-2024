void main() {
  List<String> nasabah = ['A', 'B', 'C', 'D', 'E'];
  simulasi_antrian(nasabah);
}

// Fungsi untuk menampilkan urutan pelayanan nasabah di dua loket
void simulasi_antrian(List<String> nasabah) {
  int i = 0; // Inisialisasi indeks
  while (i < nasabah.length) {
    // Jika indeks ganjil, nasabah dilayani di loket 2
    if (i % 2 == 1) {
      print("Nasabah ${nasabah[i]} dilayani di Loket 2");
    }
    // Jika indeks genap, nasabah dilayani di loket 1
    else {
      print("Nasabah ${nasabah[i]} dilayani di Loket 1");
    }
    i++; // Increment indeks
  }
}
