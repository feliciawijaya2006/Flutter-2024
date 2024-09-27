void main() {
  // Konsumsi energi per alat listrik (dalam kWh)
  const double konsumsiAC = 1.5; // kWh per jam
  const double konsumsiTV = 0.2;  // kWh per jam
  const double konsumsiLampu = 0.1; // kWh per jam

  // Jumlah jam penggunaan per hari
  const int jamAC = 8;   // jam
  const int jamTV = 5;   // jam
  const int jamLampu = 12; // jam

  // Menghitung total konsumsi energi harian
  double totalKonsumsi = (konsumsiAC * jamAC) +
                         (konsumsiTV * jamTV) +
                         (konsumsiLampu * jamLampu);

  // Menampilkan total konsumsi energi harian
  print('Total konsumsi energi harian: ${totalKonsumsi} kWh');
}
