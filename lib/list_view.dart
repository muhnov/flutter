import 'package:flutter/material.dart';
import 'package:instalasi/chartscreeen.dart';

class ListKelas extends StatefulWidget {
  final String email;

  const ListKelas({super.key, required this.email});

  @override
  _ListKelasState createState() => _ListKelasState();
}

class _ListKelasState extends State<ListKelas> {
  final List<String> mahasiswa = const [
    'Waras Tri Wijaya',
    'Abdul Fuad Nurdiansiah',
    'Adi Tegar Setiawan',
    'Afik Muhammad Nur Marzuki',
    'Aji Kia Ramadhani',
    'Alif Akbar Ardiyansyah',
    'Alfi Fadli',
    'Amanda Aditama Nurani',
    'Andri Khoirul Manaf',
    'Arcco Putra Azriyansyah',
    'Atik Setyaningsih',
    'Claudea Cahaya Cinta',
    'Devan Vidhel Azadan',
    'Dina Astritama Wulandari',
    'Garin Dani Saputra',
  ];

  List<String> filteredMahasiswa = [];
  TextEditingController searchController = TextEditingController();
  TextEditingController jumlahController = TextEditingController();
  TextEditingController namaController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredMahasiswa = mahasiswa;
  }

  void filterSearchResults(String query) {
    setState(() {
      filteredMahasiswa =
          mahasiswa
              .where(
                (element) =>
                    element.toLowerCase().contains(query.toLowerCase()),
              )
              .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Teman'),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/profil',
                arguments: {'email': widget.email},
              );
            },
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Center(child: Text('')),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              controller: jumlahController,
              decoration: const InputDecoration(
                hintText: 'Jumlah',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              controller: namaController,
              decoration: const InputDecoration(
                hintText: 'Nama',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              final jumlah = int.tryParse(jumlahController.text) ?? 0;
              final nama = namaController.text;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(jumlah: jumlah, nama: nama),
                ),
              );
            },
            child: const Text('Ke Cart Screen'),
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Text('Kembali', style: TextStyle(color: Colors.blue)),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.builder(
              itemCount: filteredMahasiswa.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.account_circle_rounded),
                  title: Text(filteredMahasiswa[index]),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => CartScreen(
                              nama: filteredMahasiswa[index],
                              jumlah: 1,
                            ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
