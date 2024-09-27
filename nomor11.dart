void main() {
  // Kapasitas baterai awal
  int battery = 100;

  // Waktu penggunaan dalam menit
  int chattingTime = 60; // menit
  int videoTime = 30;    // menit
  int gameTime = 45;     // menit

  // Penggunaan baterai per 5 menit
  int batteryUsageChatting = 1; // persen
  int batteryUsageVideo = 2;     // persen
  int batteryUsageGame = 3;      // persen

  // Menghitung total penggunaan baterai
  int totalBatteryUsed = calculateBatteryUsage(chattingTime, batteryUsageChatting) +
                         calculateBatteryUsage(videoTime, batteryUsageVideo) +
                         calculateBatteryUsage(gameTime, batteryUsageGame);

  // Menghitung sisa baterai
  battery -= totalBatteryUsed;

  // Menampilkan hasil
  print('Sisa baterai: ${battery < 0 ? 0 : battery}%');
}

// Fungsi untuk menghitung penggunaan baterai berdasarkan waktu dan penggunaan per 5 menit
int calculateBatteryUsage(int timeInMinutes, int usagePer5Minutes) {
  int usageCount = timeInMinutes ~/ 5; // Menghitung jumlah interval 5 menit
  return usageCount * usagePer5Minutes; // Total penggunaan baterai
}
