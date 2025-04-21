import 'package:flutter/material.dart';
import 'package:instalasi/list_view.dart';
import 'package:instalasi/row_column.dart';
import 'package:instalasi/stack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const RowColumn(),

      routes: {
        '/profil': (context) {
          final args =
              ModalRoute.of(context)!.settings.arguments as Map<String, String>;
          return StackProfile(email: args['email']!);
        },
        '/teman': (context) {
          final args =
              ModalRoute.of(context)!.settings.arguments as Map<String, String>;
          return ListKelas(email: args['email']!);
        },
      },
    );
  }
}
