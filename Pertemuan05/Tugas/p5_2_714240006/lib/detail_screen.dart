import 'package:flutter/material.dart';

var iniFontCustom = const TextStyle(fontFamily: 'Oswald');

class DetailScreen extends StatelessWidget {
  final String nama;
  final String npm;

  const DetailScreen({super.key, required this.nama, required this.npm});

  @override
  Widget build(BuildContext context) {
    final List<String> galleryImages = [
      'images/ac1.jpeg',
      'images/ac2.jpeg',
      'images/ac3.jpeg',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Profil'),
        backgroundColor: Colors.red[100],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nama,
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'Oswald',
                fontWeight: FontWeight.bold,
                color: Colors.red[900],
              ),
            ),

            const SizedBox(height: 8),

            Text(
              'NPM: $npm',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Oswald',
                fontWeight: FontWeight.bold,
                color: Colors.red[400],
              ),
            ),

            const SizedBox(height: 30),

            Text(
              'Tentang Saya',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Oswald',
                fontWeight: FontWeight.bold,
                color: Colors.red[900],
              ),
            ),

            const SizedBox(height: 10),

            Text(
              'Saya adalah mahasiswa Teknik Informatika di ULBI. '
              'Saya suka belajar hal baru, bertemu dengan orang orang baru dan mendapat pengalaman baru. '
              'Hobi saya adalah mendengarkan musik, bermain game, dan mengeksplorasi dunia.'
              'Impian saya adalah untuk menjadi diri sendiri yang lebih baik lagi.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Oswald',
                color: Colors.red[700],
              ),
            ),

            const SizedBox(height: 30),

            Text(
              'Galeri Aktivitas',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Oswald',
                fontWeight: FontWeight.bold,
                color: Colors.red[900],
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: galleryImages.map((imagePath) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Image.asset(imagePath, fit: BoxFit.cover),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),

            const SizedBox(height: 30),

            Center(
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.red[900],
                  side: BorderSide(color: Colors.red[400]!),
                ),
                child: const Text(
                  'Kembali',
                  style: TextStyle(fontFamily: 'Oswald', fontSize: 16),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
