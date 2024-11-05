import 'dart:io'; // Untuk mendeteksi platform
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Untuk SystemNavigator.pop
import 'package:mobile_lanjut/homescreen.dart';
import 'package:mobile_lanjut/accountscreen.dart';

class PersistentNavBar extends StatefulWidget {
  const PersistentNavBar({super.key});

  @override
  State<PersistentNavBar> createState() => _PersistentNavBarState();
}

class _PersistentNavBarState extends State<PersistentNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const Homescreen(),
    const AccountScreen(),
  ];

  void _onItemTapped(int index) {
    if (index == 2) {
      // Logika untuk menutup aplikasi saat tombol "Keluar" diklik
      if (Platform.isAndroid) {
        SystemNavigator.pop(); // Menutup aplikasi di Android
      } else if (Platform.isIOS) {
        exit(0); // Menutup aplikasi di iOS
      }
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Akun',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Keluar',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blueGrey,
      ),
    );
  }
}
