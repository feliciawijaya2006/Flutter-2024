void main(){
  int total_mesincuci = 3;
  double waktu_per_mesincuci = 2 ;
  double waktu_per_penghuni = 1.5;

  double total_waktu_cuci = total_mesincuci * waktu_per_mesincuci;
  int jumlahPenghuniPerHari = (total_waktu_cuci / waktu_per_penghuni).floor();
  
  print("Jumlah penghuni yang dapat mencuci di hari itu adalah $jumlahPenghuniPerHari. 1 orang itu akan mencuci di hari berikutnya dikarenakan jatah cuci sudah tidak tersedia");
}