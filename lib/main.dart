import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

  void main() {
    runApp(const MyApp());
    Barang krayon = Barang('Krayon', 10000, 10);
    Barang bukuTulis = Barang('Buku tulis', 3000, 8);
    Barang pensil = Barang('Pensil', 2500, 15);
    Barang rautan = Barang('Rautan', 2000, 13);
    List<Barang> daftarBarang = [krayon, bukuTulis, pensil, rautan];
    BarangPromo diskon = BarangPromo('Roti', 2500, 12, 10);


    // for (int i = 0; i < daftarBarang.length; i++) {
    //   daftarBarang[i].tampilkan();
    // }
    // print('Bisa dijual: ${rautan.bisaDijual(16)} ');

    // print('Harga diskon roti: ${diskon.hargaSetelahDiskon()}');  
    prosesBeli("5", bukuTulis);
    prosesBeli("tujuh", rautan);
    prosesBeli("100", krayon);
    // print('Stock rautan sekarang: ${rautan.stokBarang}');
    // print('Stock buku sekarang: ${bukuTulis.stokBarang}');
  }


  class Barang  {
    String namaBarang;
    num hargaBarang;
    int _stokBarang;

    int get stokBarang => _stokBarang;

    Barang(this.namaBarang, this.hargaBarang, this._stokBarang);

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

    bool bisaDijual(int diminta) {
      return stokBarang >= diminta;
    }

      void jual(int n) {
        if (bisaDijual(n)) {
          _stokBarang = _stokBarang - n;
        }
        else {
          throw Exception('Stock Kurang');
        }
      }
  }

void prosesBeli (String inputJumlah, Barang barang) {
  try{
        int jumlah = int.parse(inputJumlah);
        barang.jual(jumlah);
      } on FormatException catch (e) {
        print('$inputJumlah bukanlah angka, ulangi'); //Bagaimana penanganan galat meningkatkan 
                                                      //kepercayaaan pengurus pada sistem?
      } on Exception catch (e) {
        print('Stock kurang');
      } finally {
        print('Transaksi dicatat di log');
      }
    }

  class BarangPromo extends Barang {
    double diskonBarang;

    BarangPromo(super.namaBarang, super.hargaBarang, super.stokBarang, this.diskonBarang);

    double hargaSetelahDiskon() {
      double harga = hargaBarang.toDouble();
      return harga - (harga * (diskonBarang/100));
    }
  }

class Pembeli {
  String nama;
  bool statusAnggota;

  Pembeli(this.nama, this.statusAnggota);
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
