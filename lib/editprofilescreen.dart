import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _universityController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadProfileData(); // Load data saat halaman dimuat
  }

  // Fungsi untuk memuat data dari SharedPreferences
  Future<void> _loadProfileData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _emailController.text = prefs.getString('email') ?? '';
      _nameController.text = prefs.getString('name') ?? '';
      _phoneController.text = prefs.getString('phone') ?? '';
      _addressController.text = prefs.getString('address') ?? '';
      _universityController.text = prefs.getString('university') ?? '';
    });
  }

  // Fungsi untuk menyimpan data ke SharedPreferences
  Future<void> _saveProfileData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', _emailController.text);
    await prefs.setString('name', _nameController.text);
    await prefs.setString('phone', _phoneController.text);
    await prefs.setString('address', _addressController.text);
    await prefs.setString('university', _universityController.text);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Data berhasil disimpan!')),
    );
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
            // Bagian Profil
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
                  _nameController.text.isEmpty
                      ? 'Nama Lengkap'
                      : _nameController.text,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  _universityController.text.isEmpty
                      ? 'Asal Universitas'
                      : _universityController.text,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Input Form
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nama',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: 'Nomor Telepon',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _addressController,
              decoration: InputDecoration(
                labelText: 'Alamat',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _universityController,
              decoration: InputDecoration(
                labelText: 'Asal Universitas',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Tombol Simpan
            ElevatedButton(
              onPressed: () async {
                await _saveProfileData(); // Simpan data ke SharedPreferences
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                "Ubah Profil",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
