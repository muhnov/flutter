import 'package:flutter/material.dart';
import 'package:instalasi/list_view.dart';
import 'package:instalasi/login2_screen.dart';
import 'package:instalasi/stack.dart';

final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (context, currentMode, _) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: currentMode,
          initialRoute: '/',
          routes: {
            '/': (context) => const Login(),
            '/profile': (context) {
              final args = ModalRoute.of(context)?.settings.arguments as Map?;
              return StackProfile(email: args?['email']);
            },
            '/teman': (context) => const ListKelas(email: ''),
          },
        );
      },
    );
  }
}
