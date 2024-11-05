import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:mobile_lanjut/dummy_data.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex = 0;
  List<Map<String, dynamic>> _currentListItems =
      DummyData.getItemsByCategory("Nutrisi"); // Default kategori

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 1) {
      Navigator.pushNamed(context, '/account');
    } else if (index == 2) {
      if (Platform.isAndroid) {
        SystemNavigator.pop();
      } else if (Platform.isIOS) {
        exit(0);
      }
    }
  }

  // Fungsi untuk mengubah list item berdasarkan kategori yang dipilih
  void _onCategorySelected(String categoryTitle) {
    setState(() {
      _currentListItems = DummyData.getItemsByCategory(categoryTitle);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          leadingWidth: 120,
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.account_circle),
                onPressed: () {},
              ),
              const Text(
                'Tamu',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Widget Grid View untuk Kategori
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Kategori',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const Icon(Icons
                      .arrow_right_alt_sharp), // Menggunakan Icon dari Icons
                  onPressed: () {
                    // Tambahkan logika yang Anda inginkan saat tombol ini diklik
                  },
                ),
              ],
            ),
            SizedBox(
              height: 120,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: DummyData.categories.length,
                itemBuilder: (context, index) {
                  final category = DummyData.categories[index];
                  return GestureDetector(
                    onTap: () => _onCategorySelected(category["title"]),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(category["icon"],
                                size: 48, color: Colors.grey),
                            const SizedBox(height: 8),
                            Text(
                              category["title"],
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              category["description"],
                              style: const TextStyle(color: Colors.grey),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            // Widget List View untuk List Item
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'List item',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const Icon(Icons
                      .arrow_right_alt_sharp), // Menggunakan Icon dari Icons
                  onPressed: () {
                    // Tambahkan logika yang Anda inginkan saat tombol ini diklik
                  },
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _currentListItems.length,
                itemBuilder: (context, index) {
                  final listItem = _currentListItems[index];
                  return ListTile(
                    leading: Container(
                      width: 60,
                      height: 60,
                      color: Colors.grey[300],
                      child: Icon(listItem["icon"], color: Colors.grey),
                    ),
                    title: Text(listItem["headline"]),
                    subtitle: Text(listItem["description"]),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.add_circle_outline),
                          onPressed: () {},
                        ),
                        const SizedBox(width: 8),
                        IconButton(
                          icon: const Icon(Icons.book),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: BottomNavigationBar(
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
      ),
    );
  }
}
