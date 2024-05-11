import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark, // Mengatur tema mode menjadi dark
      darkTheme: ThemeData.dark(), // Menggunakan tema dark bawaan
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Daftar Mahasiswa'),
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Mahasiswa(
              nama: 'RANDI PANGESTU',
              nim: 'STI202102392',
            ),
            Mahasiswa(
              nama: 'SEPTIASIH NUR INAYAH',
              nim: 'STI202102393',
            ),
            Mahasiswa(
              nama: 'AWAN RESTU LISTYANTO',
              nim: 'STI202102395',
              latar: const Color.fromARGB(255, 76, 172, 175),
              bold: true,
              iconSize: 30,
            ),
            Mahasiswa(
              nama: 'AGUS PRIANTO',
              nim: 'STI202102397',
            ),
            Mahasiswa(
              nama: 'FEBRIANTIO',
              nim: 'STI202102399',
            ),
          ],
        ),
      ),
    );
  }
}

class Mahasiswa extends StatelessWidget {
  final String nama;
  final String nim;
  final Color? latar;
  final bool bold;
  final double iconSize;
  
  const Mahasiswa({Key? key, required this.nama, required this.nim, this.latar, this.bold = false, this.iconSize = 24});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: latar ?? Color.fromARGB(255, 26, 25, 25),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Icon(Icons.chevron_right, size: iconSize),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nama,
                style: TextStyle(
                  fontSize: bold ? 24 : 20,
                  fontWeight: bold ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              Text(
                'NIM: $nim',
                style: TextStyle(
                  fontSize: bold ? 20 : 16,
                  fontWeight: bold ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
