import 'package:flutter/material.dart';
import 'package:instalasi/stack.dart';

class RowColumn extends StatefulWidget {
  const RowColumn({super.key});

  @override
  State<RowColumn> createState() => _RowColumnstate();
}

class _RowColumnstate extends State<RowColumn> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void handleLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (context) => StackProfile(
              email: emailController.text, // Hanya mengirim email
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Login',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            CircleAvatar(
              radius: 50,
              backgroundImage: const AssetImage('images/login.jpg'),
              onBackgroundImageError: (_, __) {
                debugPrint("Gambar tidak ditemukan di images/login.jpg");
              },
            ),

            const SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: handleLogin, child: const Text('Login')),
          ],
        ),
      ),
    );
  }
}
