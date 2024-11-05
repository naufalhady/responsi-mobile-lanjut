import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Tambahkan ini untuk akses SharedPreferences
import 'package:mobile_lanjut/editprofilescreen.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  String _name = 'Nama Lengkap'; // Default jika belum ada data
  String _university = 'Asal Universitas'; // Default jika belum ada data

  @override
  void initState() {
    super.initState();
    _loadProfileData(); // Load data saat halaman dimuat
  }

  // Fungsi untuk memuat data dari SharedPreferences
  Future<void> _loadProfileData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _name = prefs.getString('name') ?? 'Nama Lengkap';
      _university = prefs.getString('university') ?? 'Asal Universitas';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
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
                Text(
                  _name, // Tampilkan nama yang diambil dari SharedPreferences
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  _university, // Tampilkan asal universitas yang diambil dari SharedPreferences
                  style: const TextStyle(
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
                    onTap: () async {
                      // Navigasi ke EditProfileScreen dan refresh data saat kembali
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EditProfileScreen(),
                        ),
                      );
                      _loadProfileData(); // Refresh data setelah kembali dari EditProfileScreen
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
            Navigator.pushReplacementNamed(context, '/homescreen');
          } else if (index == 2) {
            SystemNavigator.pop();
          }
        },
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
