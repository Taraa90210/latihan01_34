import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
  Barang krayon = Barang('Krayon', 10000, 10);
  Barang bukuTulis = Barang('Buku tulis', 3000, 8);
  Barang pensil = Barang('Pensil', 2500, 15);
  Barang rautan = Barang('Rautan', 2000, 13);
  List<Barang> daftarBarang = [krayon, bukuTulis, pensil, rautan];
  
  for (int i = 0; i < daftarBarang.length; i++) {
    daftarBarang[i].tampilkan();
  }
}

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

class Barang  {
  String namaBarang;
  num hargaBarang;
  int stokBarang;

  Barang(this.namaBarang, this.hargaBarang, this.stokBarang);

  bool cekStock() {
    return stokBarang > 0;
  }

  void tampilkan(){
    print('========================');
    print('Barang : $namaBarang');
    print('Harga  : $hargaBarang');
    print('Stock  : $stokBarang');
    print('=========================');
  }
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

  void _printStock() {
  }

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
