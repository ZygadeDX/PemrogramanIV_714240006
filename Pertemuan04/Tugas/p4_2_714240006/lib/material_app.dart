import 'package:flutter/material.dart';
import 'package:p4_2_714240006/material_page.dart';

class AppMaterial extends StatelessWidget {
  const AppMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Pertemuan 4',
      theme: ThemeData.light(useMaterial3: false),
      home: const HomePage(),
    );
  }
}