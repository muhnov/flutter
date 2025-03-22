import 'package:flutter/material.dart';
import 'package:instalasi/list_view.dart';
import 'package:instalasi/stack.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Kelas TI 23 A2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Selamat Datang!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListKelas()),
                );
              },
              child: const Text('Lihat List Mahasiswa'),
            ),
            const SizedBox(height: 20), // Spasi biar rapi
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StackProfile()),
                );
              },
              child: const Text('Lihat Stack'),
            ),
          ],
        ),
      ),
    );
  }
}
