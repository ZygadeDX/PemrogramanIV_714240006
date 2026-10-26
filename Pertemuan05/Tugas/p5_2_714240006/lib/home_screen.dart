import 'package:flutter/material.dart';
import 'detail_screen.dart';

var iniFontCustom = const TextStyle(fontFamily: 'Oswald');

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String nama = 'Muhammad Rashid Al Savero';
    const String npm = '714240006';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Pertemuan 5'),
        backgroundColor: Colors.red[100],
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(20),
          color: Colors.red[50],
          elevation: 4,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),

              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'images/me.jpeg',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                nama,
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Oswald',
                  fontWeight: FontWeight.bold,
                  color: Colors.red[900],
                ),
              ),

              const SizedBox(height: 10),

              Text(
                npm,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Oswald',
                  fontWeight: FontWeight.bold,
                  color: Colors.red[400],
                ),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        nama: nama,
                        npm: npm,
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[200],
                  foregroundColor: Colors.red[900],
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                ),
                child: const Text(
                  'Lihat Detail Profil',
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 16,
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}