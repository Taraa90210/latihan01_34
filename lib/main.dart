import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

  void main() async {
    runApp(const MyApp());
    //daftar barang
    Barang krayon = Barang('Krayon', 10000, 10);
    Barang bukuTulis = Barang('Buku tulis', 3000, 8);
    Barang pensil = Barang('Pensil', 2500, 15);
    Barang rautan = Barang('Rautan', 2000, 13);
    List<Barang> daftarBarang = [krayon, bukuTulis, pensil, rautan];
    //belum digunakan lagi ↓↓
    BarangPromo diskon = BarangPromo('Roti', 2500, 12, 10);
    //pembeli
    Pembeli budi = Pembeli('Budi', true);   
    Pembeli sari = Pembeli('Sari', false);  
    
    //print daftar barang
    await muatLaporan();
    for (int i = 0; i < daftarBarang.length; i++) {
      daftarBarang[i].tampilkan();  
    }
    //prin struk
    prosesBeli("3", krayon, budi);
    prosesBeli("lima", bukuTulis, sari);
  }

//format Rp
final formatRupiah = NumberFormat.currency(
  locale: 'id_ID',
  symbol: 'Rp',
  decimalDigits: 0,
);
//kelas barang
  class Barang  {
    //deklarasi
    String namaBarang;
    num hargaBarang;
    int _stokBarang;
    
    //getter karena dikapsulasi
    int get stokBarang => _stokBarang;

    Barang(this.namaBarang, this.hargaBarang, this._stokBarang);

    //true jika lebih dari nol
    bool cekStock() {
      return stokBarang > 0;
    }
    //memnentukan harga sesuai status na
    num hargaYangDitentukan(Pembeli pembeli) {
      if (pembeli.statusAnggota == true) {
        return hargaBarang - (hargaBarang * (5/100));
      } 
      else {
        return hargaBarang;
      }
    }
    //print stok dan harga
    void tampilkan(){
      print('========================');
      print('Barang : $namaBarang');
      print('Harga  : ${formatRupiah.format(hargaBarang)}');
      print('Stock  : $stokBarang');
      print('=========================');
    }
    //ture jika stock lebih dari barang yang ingin dibeli
    bool bisaDijual(int diminta) {
      return stokBarang >= diminta;
    }
    //menentukan stock setelah terjual, print stock kurang jika tidak mencukupi
    void jual(int n) {
      if (bisaDijual(n)) {
        _stokBarang = _stokBarang - n;
      }
      else {
        throw Exception('Stock Kurang');
      }
    }
  }

Future<void> muatLaporan() async {
  print('Menyiapkan laporan penjualan...');
  await Future.delayed(Duration(seconds: 1));
  print('Laporan siap!');
}

void prosesBeli (String inputJumlah, Barang barang, Pembeli pembeli) {
  try{
        //deklarasi var
        int jumlah = int.parse(inputJumlah);
        num hargaSatuan = barang.hargaYangDitentukan(pembeli);
        num totalHarga = hargaSatuan * jumlah;
        num potongan;

        //pengecekan potongan harga, dari 50ribuh sampai 10ribuh
        if (totalHarga > 50000 && pembeli.statusAnggota == true) {
          potongan = totalHarga * (15/100);
        }
        else if (totalHarga > 20000) {
          potongan = totalHarga * (10/100);
        }
        else if (totalHarga >   10000) {
          potongan = totalHarga * (5/100);
        }
        else {
          potongan = 0;
        }
        num totalAkhir = totalHarga - potongan;
        //prin struck na
        print('--------------------- Struck Pembelian ---------------------');
        print('Pembeli: ${pembeli.nama}');        
        print('Status anggota: ${pembeli.statusAnggota}');
        print('Harga ${barang.namaBarang}: ${formatRupiah.format(hargaSatuan)}');
        print('Jumlah ${barang.namaBarang} yang dibeli : $jumlah');        
        print('Total belanja (Sebelum Potongan) ${pembeli.nama}: ${formatRupiah.format(totalHarga)}');
        print('Potongan: ${formatRupiah.format(potongan)}');
        print('Total akhir: ${formatRupiah.format(totalAkhir)}');
        print('Stok ${barang.namaBarang} sebelum dijual: ${barang.stokBarang}');
        barang.jual(jumlah);
        print('Stok ${barang.namaBarang} setelah dijual: ${barang.stokBarang}');
        print('-------------------------------------------------------------');
      } on FormatException catch (e) { //pencegahan eror
        print('$inputJumlah bukanlah angka, ulangi'); 
        //Bagaimana penanganan galat meningkatkan kepercayaaan pengurus pada sistem?
      } on Exception catch (e) {
        print('Stock kurang');
      } finally {
        print('Transaksi dicatat di log\n');
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
