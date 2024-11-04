import 'package:flutter/material.dart';
import 'package:mobile_lanjut/splashscreen.dart';
import 'package:mobile_lanjut/Loginscreen.dart';
// import 'package:mobile_lanjut/Homescreen.dart';
// import 'package:mobile_lanjut/Profilescreen.dart';

void main() {
  runApp(const ResponsiApp());
}

class ResponsiApp extends StatelessWidget {
  const ResponsiApp({super.key});

  // This widget is the root of your application.
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
        // '/forgotpassword': (context) => const FPScreen(),
        // '/home': (context) => const Homescreen(),
        // '/profile': (context) => const Profilescreen(),
      },
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
