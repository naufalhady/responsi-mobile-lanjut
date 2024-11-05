import 'package:flutter/material.dart';
import 'package:mobile_lanjut/splashscreen.dart';
import 'package:mobile_lanjut/homescreen.dart';
import 'package:mobile_lanjut/accountscreen.dart';

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
        '/forgotpassword': (context) => const Forgotpassword(),
        '/register': (context) => const Register(),
        '/homescreen': (context) => const Homescreen(),
        '/account': (context) => const AccountScreen(),
      },
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
