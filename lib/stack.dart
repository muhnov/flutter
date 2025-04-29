import 'package:flutter/material.dart';
import 'main.dart';

class StackProfile extends StatefulWidget {
  final String? email;

  const StackProfile({Key? key, this.email}) : super(key: key);

  @override
  State<StackProfile> createState() => _StackProfileState();
}

class _StackProfileState extends State<StackProfile> {
  bool hitam = themeNotifier.value == ThemeMode.dark;

  void toggleTheme(bool value) {
    setState(() {
      hitam = value;
      themeNotifier.value = hitam ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          Row(
            children: [
              const Icon(Icons.brightness_6),
              Switch(value: hitam, onChanged: toggleTheme),
            ],
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/profile.png'),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(8),
                  child: const Icon(Icons.edit, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              widget.email ?? 'Tidak ada email',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/teman',
                  arguments: {'email': widget.email ?? 'user@unknown.com'},
                );
              },
              icon: const Icon(Icons.people),
              label: const Text('Lihat Teman'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
