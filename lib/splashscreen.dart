import 'package:flutter/material.dart';
// import 'package:mobile_lanjut/Loginscreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
  super.initState();
  Future.delayed(const Duration(seconds: 5),(){
    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(context, '/login');
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
            "assets/images/splashscreenIcon.png",
            width: 120.0,
            height: 120.0,
            fit: BoxFit.fill,
            ),
            const SizedBox(height: 20,),
            const Text(
              'Responsi',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color:  Color.fromARGB(255, 3, 28, 49),
              ),
            ),
            const Text(
              'Matakuliah Mobile Lanjut',
              style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(131, 131, 131, 100),
              ),
            )
          ]
        )
      )
      // child: , /disini
    );
  }
}
