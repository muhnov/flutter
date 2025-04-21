import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final int jumlah;
  final String nama;

  const CartScreen({Key? key, required this.jumlah, required this.nama}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cart Screen')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Nama: $nama', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Jumlah Barang: $jumlah', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
