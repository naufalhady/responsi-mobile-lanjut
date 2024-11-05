import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_lanjut/editprofilescreen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Bagian Gambar Profil
            Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.account_circle,
                      size: 80, color: Colors.grey),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Nama Lengkap',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Asal Universitas',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // List Menu
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              color: Colors.grey[100],
              child: Column(
                children: [
                  ListTile(
                    title: const Text('Kelola Akun'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EditProfileScreen(),
                        ),
                      );
                    },
                  ),
                  Divider(height: 1, color: Colors.grey[300]),
                  ListTile(
                    title: const Text('Notifikasi'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Aksi atau navigasi untuk Notifikasi
                    },
                  ),
                  Divider(height: 1, color: Colors.grey[300]),
                  ListTile(
                    title: const Text('Privacy Policy'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Aksi atau navigasi untuk Privacy Policy
                    },
                  ),
                  Divider(height: 1, color: Colors.grey[300]),
                  ListTile(
                    title: const Text('Terms of Service'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Aksi atau navigasi untuk Terms of Service
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Indeks untuk halaman "Akun"
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/home');
          } else if (index == 2) {
            SystemNavigator.pop();
          }
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Akun',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
