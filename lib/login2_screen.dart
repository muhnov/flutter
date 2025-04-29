import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passwordtertutup = true;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void tampilanpassword() {
    setState(() {
      passwordtertutup = !passwordtertutup;
    });
  }

  void login() {
    final email = emailController.text.trim();
    if (email.isNotEmpty) {
      Navigator.pushNamed(context, '/profile', arguments: {'email': email});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      backgroundColor: passwordtertutup ? Colors.yellow : Colors.red,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'email anda',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            TextField(
              controller: passwordController,
              obscureText: passwordtertutup,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'password anda',
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                      passwordtertutup ? Icons.visibility : Icons.visibility_off),
                  onPressed: tampilanpassword,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: tampilanpassword,
              child: const Text("Tampilkan Password"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: login,
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
