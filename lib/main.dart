import 'package:flutter/material.dart';
import 'package:instalasi/homescreen.dart';
import 'package:instalasi/list_view.dart';
import 'package:instalasi/row_column.dart';
import 'package:instalasi/homescreen.dart';
import 'package:instalasi/stack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: StackProfile(),
    );
  }
}
