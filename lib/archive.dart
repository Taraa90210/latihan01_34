  // void _printStock() {
  //   setState(() {
  //     String barang = 'Pulpen 3 Warna';
  //     num hargaMember = -25000;
  //     num hargaUmum = 25000;
  //     int jumlahStock = 30;
  //     bool member = true;
  //     num hargaSatuan;
  //     num potongan;
  //     List;

  //     bool tersedia = jumlahStock > 0; //<----
  //     num selisih = hargaUmum - hargaMember;

  //     final formatRupiah = NumberFormat.currency(
  //       locale: 'id_ID',
  //       symbol: 'Rp',
  //       decimalDigits: 0,
  //     );

  //     if (member == true) {
  //       hargaSatuan = hargaMember;
  //     } 
  //     else {
  //       hargaSatuan = hargaUmum;
  //     }
  //     num beliBerapa = 22;
  //     num total = hargaSatuan * beliBerapa;

  //     if (total > 500000 && member == true) {
  //       potongan = total * (15/100);
      // }
      // else if (total > 200000) {
      //   potongan = total * (10/100);
      // }
      // else if (total >   100000) {
      //   potongan = total * (5/100);
      // }
      // else {
      //   potongan = 0;
      // }

      // num hargaAkhir = total - potongan;

  //   //jarak la
  //   String kategori = 'atk';
  //   String lokasiRak;
  //   switch (kategori) {
  //     case 'atk' : lokasiRak = 'Rak 1';
  //     case 'makanan' : lokasiRak = 'Rak 2';
  //     case 'minuman' : lokasiRak = 'Rak 3';
  //     default : lokasiRak = 'Rak Lain';
  //   };
  //   //Kalau pakai banyak if-else if harus menulis ekspresi pengecekan variabel kategori
  //   //berulang-ulang di setiap baris kondisi
  //   //
  //     print('=====Stock=====');
  //     print('Barang: $barang');
  //     print('Rak: $lokasiRak');
  //     print('Harga Member: ${formatRupiah.format(hargaMember)}');
  //     print('Harga Umum: ${formatRupiah.format(hargaUmum)}');
  //     print('Jumlah Stock: $jumlahStock');
  //     print('Tersedia: ${tersedia ? "Tersedia" : "Tidak Tersedia"}'); //<----
  //     print('Status Pembeli: ${member ? "Member" : "Umum"}');
  //     print('Total Barang yang di Beli: $beliBerapa pcs');
  //     print('Total: ${formatRupiah.format(total)}');
  //     print('Potongan: ${potongan}');
  //     print('Total (Potongan): ${formatRupiah.format(hargaAkhir)}');
  //     print('Selisih Anggota dan Umum: ${formatRupiah.format(selisih)}');
  //     print('===============');
  //   });
  // }

//

      // for (int i = 0; i < barangGudang.length; i++ ) {
      //   print('${i+1}. ${barangGudang[i]}-${formatRupiah.format(hargaBarang[i])}');
      // }
      // while (stockBuku > 0) {stockBuku = stockBuku - 2;
      //   print('Terjual 1, Sisa stock: $stockBuku');
      // }

//

      // List<String> barangGudang = ['Krayon', 'Buku Tulis', 'Pensil', 'Rautan'];
      // List<num> hargaBarang = [10000, 3000, 2500, 2000];
      // List<int> stockBarang = [8, 10, 9, 5];

      // final formatRupiah = NumberFormat.currency(
      //   locale: 'id_ID',
      //   symbol: 'Rp',
      //   decimalDigits: 0,
      // );
      // num akumulator = 0;
      // print('=====Penjualan Buku Tulis=====');
      // for (int i = 0; i < barangGudang.length; i++) {
      //   num nilaiBarang = hargaBarang[i] * stockBarang[i];
      //   akumulator = akumulator + nilaiBarang;
      //   print('${i+1}. ${barangGudang[i]} - Nilai Stock: ${formatRupiah.format(nilaiBarang)}');
      //  }
      // print('Akumulasi: ${formatRupiah.format(akumulator)}');
      // print('==============================');

//

      // for (int i = 0; i < barangGudang.length; i++) {
      //   if (stockBarang[i] < 5) {
      //     print('Stock ${barangGudang[i]} menipis, tersisa ${stockBarang[i]}');
      //   }
      // }

//

  // void _printStock() {
  //   setState(() {
  //     List<String> barangGudang = ['Krayon', 'Buku Tulis', 'Pensil', 'Rautan'];
  //     List<num> hargaBarang = [10000, 3000, 2500, 2000];
  //     List<int> stockBarang = [8, 2, 3, 5];
  //     int barangYangDiBeli = 3;
  //     double hargaSatuan = hargaBarang[1].toDouble();
  //     double hitungTotal;
  //     final formatRupiah = NumberFormat.currency(
  //       locale: 'id_ID',
  //       symbol: 'Rp',
  //       decimalDigits: 0,
  //     );

  //     print('=====Check Stock=====');
  //     print('======================');
  //   });
  // }

//   void main() {
//   runApp(const MyApp());
//   hitungTotal(barangYangDiBeli, hargaSatuan);
//   print('${hitungTotal(barangYangDiBeli, hargaSatuan)}');
// }

// List<num> hargaBarang = [10000, 3000, 2500, 2000];
// int barangYangDiBeli = 3;
// double hargaSatuan = hargaBarang[1].toDouble();

// double hitungTotal(int barangYangDiBeli, double hargaSatuan) {
//   return barangYangDiBeli * hargaSatuan;
// }

//

//RPL-12.2-503 — List
// void main() {
//   runApp(const MyApp());
//   Barang krayon = Barang('Krayon', 10000, 10);
//   Barang bukuTulis = Barang('Buku tulis', 3000, 8);
//   Barang pensil = Barang('Pensil', 2500, 15);
//   Barang rautan = Barang('Rautan', 2000, 13);
//   List<Barang> daftarBarang = [krayon, bukuTulis, pensil, rautan];
  
//   for (int i = 0; i < daftarBarang.length; i++) {
//     daftarBarang[i].tampilkan();
//   }
// }

// //apa yang lebih baik dibanding cara Sprint 3?
// //Jawaban:
// //Kode menjadi lebih ringkas karena cukup panggil daftarBarang[i].tampilkan(),
// //tidak perlu menulis ulang format print manual setiap kali,
// //juga lebih aman karena nama, harga, dan stok tergabung jadi 1 objek utuh,
// //datanya tidak mungkin "kepisah" seperti risiko pada 3 List terpisah
// //(barangGudang, hargaBarang, stockBarang) yang bisa tidak sinkron
// //kalau salah satu List berubah jumlah elemennya.


// class Barang  {
//   String namaBarang;
//   num hargaBarang;
//   int stokBarang;

//   Barang(this.namaBarang, this.hargaBarang, this.stokBarang);

//   bool cekStock() {
//     return stokBarang > 0;
//   }

//   void tampilkan(){
//     print('========================');
//     print('Barang : $namaBarang');
//     print('Harga  : $hargaBarang');
//     print('Stock  : $stokBarang');
//     print('=========================');
//   }
// }

//

//apa yang lebih baik dibanding cara Sprint 3?
//Jawaban:
//Kode menjadi lebih ringkas karena cukup panggil daftarBarang[i].tampilkan(),
//tidak perlu menulis ulang format print manual setiap kali,
//juga lebih aman karena nama, harga, dan stok tergabung jadi 1 objek utuh,
//datanya tidak mungkin "kepisah" seperti risiko pada 3 List terpisah
//(barangGudang, hargaBarang, stockBarang) yang bisa tidak sinkron
//kalau salah satu List berubah jumlah elemennya.

//Apa keuntungan memodelkan barang sebagai objek bagi pengembangan sistem koperasi ke depan?
//Jawaban:
//kalau koperasi berkembang dari 4 barang jadi 400 barang,
//cukup tambah objek baru ke List Bandingkan dengan cara Sprint 3 
//kalau harus tetap sinkron 3 List sekaligus untuk 400 data.
//Lalu method seperti tampilkan() atau cekStock() itu sudah ditulis sekali, 
//tapi bisa dipakai berkali-kali untuk barang apa pun, 
//jika nanti ada bagian program lain (misal fitur laporan, atau fitur pencarian barang) 
//yang butuh cek stok atau tampilkan kartu barang, tinggal memakai ulang method yang sama, tanpa menulis ulang logikanya

//

//HOTS 1 spirnt 5
  // double nilaiStock() {
  //   return hargaBarang.toDouble() * stokBarang;
  // }
  // print('Nilai stock rautan: ${rautan.nilaiStock()}');

//


    // for (int i = 0; i < daftarBarang.length; i++) {
    //   daftarBarang[i].tampilkan();
    // }
    // print('Bisa dijual: ${rautan.bisaDijual(16)} ');

    // // print('Harga diskon roti: ${diskon.hargaSetelahDiskon()}');  
    // prosesBeli("5", bukuTulis);
    // prosesBeli("tujuh", rautan);
    // prosesBeli("100", krayon);
    // print('Stock rautan sekarang: ${rautan.stokBarang}');
    // print('Stock buku sekarang: ${bukuTulis.stokBarang}');