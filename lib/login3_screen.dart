import 'package:flutter/material.dart';

class Login3Screen extends StatefulWidget {
  const Login3Screen({super.key});

  @override
  State<Login3Screen> createState() => _Login3ScreenState();
}

class _Login3ScreenState extends State<Login3Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login 3 Screen')),
      body: Column(
        children: [
          TextField(),
          TextField(),
          ElevatedButton(onPressed: () {}, child: Text("Login")),
        ],
      ),
    );
  }
}
