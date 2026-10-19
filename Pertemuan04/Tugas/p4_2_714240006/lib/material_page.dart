import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tugas Pertemuan 4"),
        backgroundColor: const Color.fromARGB(255, 255, 119, 0),
      ),
      body: const Center(child: LayoutTugas()),
    );
  }
}

class LayoutTugas extends StatelessWidget {
  const LayoutTugas({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 250,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(3, 5),
                blurRadius: 8,
              ),
            ],
          ),
          child: const Center(
            child: Text(
              'Box 1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        const SizedBox(height: 30),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 4),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Box 2',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(width: 20),

            Container(
              width: 100,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'Box 3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
