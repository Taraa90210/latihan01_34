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