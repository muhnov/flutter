import 'package:flutter/material.dart';

//lib/contoh_list_view.dart
class ListKelas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Mahasiswa TI23A2')),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('Waras Tri Wijaya'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('Abdul Fuad Nurdiansiah'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('Adi Tegar Setiawan'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('Afik Muhammad Nur Marzuki'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('Aji Kia Ramadhani'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('Alif AKbar Ardiyansyah'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('Alfi Fadli'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('Amanda Aditama Nurani'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('Andri Khoirul Manaf'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('Arcco Putra Azriyansyah'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('Atik Setyaningsih'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('Claudea Cahaya Cinta'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('Devan Vidhel Azadan'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('Dina Astritama Wulandari'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('Garin Dani Saputra'),
          ),
        ],
      ),
    );
  }
}
