import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // Fungsi run app() adalah untuk mengambil Widget yang diberikan
  // dan menjadikannya root dari pohon widget.
  runApp(MyApp());
}

// script dibawah unutk membuat widget baru yang merupakan
// subkelas dari StatelessWidget atau StatefulWidget yang
// akan mendeskripsikan fungsi build
class MyApp extends StatelessWidget {
  @override
  // scrip dibawah ini membuat sebuah container Bagian header yang akan
  // menampung kelas widget turunan setiap widget Teks ditempatkan di Penampung
  // untuk menambahkan margin. Seluruh baris juga ditempatkan dalam wadah
  // untuk menambahkan bantalan di sekitar baris.
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Borobudur Temple',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Magelang, Jawa tengah',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('123'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    // script dibawah merupakan container untuk button, container ini mempunyai
    // anak yaitu row, di dalam baris akan berisi icon drection dan share
    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.near_me, 'DIRECTIONS'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    // scrip dibawah merupakan contaoner unutk mengisi text dibawah
    // kontainer button
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Borobudur adalah sebuah candi Buddha yang terletak di Borobudur,'
            'Magelang, Jawa Tengah, Indonesia. '
            'Candi ini terletak kurang lebih 100 km di sebelah barat daya Semarang, '
            '86 km di sebelah barat Surakarta, dan 40 km di sebelah barat laut Yogyakarta.',
        softWrap: true,
      ),
    );

    // untuk menampilakan judul aplikasi, menu, icon ataupun image
    // menggunakan script appbar seperti dibawah.
    return MaterialApp(
      title: 'Pegi GK Jadi',    // nama halaman
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pegi GK Jadi'), // bagian header
        ),
        body: ListView(
          children: [
            Image.asset(
              'lib/images/images1.jpg', // dibawah header terdapat
                                        // file gambar images1.jpg
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}