import 'package:flutter/material.dart';
import 'package:mobile_lanjut/splashscreen.dart';
import 'package:mobile_lanjut/loginscreen.dart';
import 'package:mobile_lanjut/forgotpassword.dart';
import 'package:mobile_lanjut/register.dart';
import 'package:mobile_lanjut/persistent_nav_bar.dart';

void main() {
  runApp(const ResponsiApp());
}

class ResponsiApp extends StatelessWidget {
  const ResponsiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsi Mobile Lanjut',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Splashscreen(),
        '/login': (context) => const Loginscreen(),
        '/forgotpassword': (context) => const Forgotpassword(),
        '/register': (context) => const Register(),
        '/main': (context) => const PersistentNavBar(), // Persistent nav bar
      },
    );
  }
}
