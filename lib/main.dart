import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: const Color.fromARGB(255, 51, 206, 245),
        ),
      ),
      home: const MyHomePage(
        title: 'Check Stock', //<---- yang ini pak
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
  void _printStock() {
    setState(() {
      List<String> barangGudang = ['Krayon', 'Buku Tulis', 'Pensil', 'Rautan'];
      List<num> hargaBarang = [10000, 3000, 2500, 2000];
      List<int> stockBarang = [8, 10, 9, 5];

      final formatRupiah = NumberFormat.currency(
        locale: 'id_ID',
        symbol: 'Rp',
        decimalDigits: 0,
      );
      num akumulator = 0;
      print('=====Penjualan Buku Tulis=====');
      for (int i = 0; i < barangGudang.length; i++) {
        num nilaiBarang = hargaBarang[i] * stockBarang[i];
        akumulator = akumulator + nilaiBarang;
        print('${i+1}. ${barangGudang[i]} - Nilai Stock: ${formatRupiah.format(nilaiBarang)}');
       }
      print('Akumulasi: ${formatRupiah.format(akumulator)}');
      print('==============================');
    });
  }

// for (int i = 0; i < barangGudang.length; i++ ) {
      //   print('${i+1}. ${barangGudang[i]}-${formatRupiah.format(hargaBarang[i])}');
      // }
      // while (stockBuku > 0) {stockBuku = stockBuku - 2;
      //   print('Terjual 1, Sisa stock: $stockBuku');
      // }
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: .center,
          children: [
            const Text('barang'),
            Text('', style: Theme.of(context).textTheme.headlineMedium),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _printStock,
        tooltip: 'Cek stock',
        child: const Text('Cek'),
      ),
    );
  }
}
