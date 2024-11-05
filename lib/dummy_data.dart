import 'package:flutter/material.dart';

class DummyData {
  // Data dummy untuk kategori kesehatan
  static List<Map<String, dynamic>> categories = [
    {
      "title": "Nutrisi",
      "icon": Icons.local_dining,
      "description": "Panduan nutrisi",
    },
    {
      "title": "Olahraga",
      "icon": Icons.fitness_center,
      "description": "Latihan fisik",
    },
    {
      "title": "Mental",
      "icon": Icons.psychology,
      "description": "Tips mental",
    },
    {
      "title": "Jantung",
      "icon": Icons.favorite,
      "description": "Pencegahan",
    },
    {
      "title": "Diabetes",
      "icon": Icons.bloodtype,
      "description": "Tips mencegah",
    },
  ];

  // List item khusus untuk setiap kategori
  static List<Map<String, dynamic>> nutritionItems = [
    {
      "headline": "Makanan Sehat",
      "description": "Pentingnya nutrisi seimbang",
      "icon": Icons.new_releases
    },
    {
      "headline": "Vitamin Penting",
      "description": "Vitamin yang diperlukan tubuh",
      "icon": Icons.new_releases
    },
    {
      "headline": "Serat Harian",
      "description": "Mengapa serat penting",
      "icon": Icons.new_releases
    },
    {
      "headline": "Protein Nabati",
      "description": "Protein dari tumbuhan",
      "icon": Icons.new_releases
    },
    {
      "headline": "Manfaat Air",
      "description": "Hidrasi tubuh yang tepat",
      "icon": Icons.new_releases
    },
    {
      "headline": "Antioksidan",
      "description": "Makanan tinggi antioksidan",
      "icon": Icons.new_releases
    },
    {
      "headline": "Lemak Sehat",
      "description": "Pilih lemak yang baik",
      "icon": Icons.new_releases
    },
    {
      "headline": "Kesehatan Pencernaan",
      "description": "Menjaga pencernaan",
      "icon": Icons.new_releases
    },
    {
      "headline": "Zat Besi",
      "description": "Fungsi zat besi bagi tubuh",
      "icon": Icons.new_releases
    },
    {
      "headline": "Mengurangi Gula",
      "description": "Cara mengurangi konsumsi gula",
      "icon": Icons.new_releases
    },
  ];

  static List<Map<String, dynamic>> exerciseItems = [
    {
      "headline": "Olahraga Harian",
      "description": "Rutinitas untuk jantung sehat",
      "icon": Icons.new_releases
    },
    {
      "headline": "Latihan Kekuatan",
      "description": "Manfaat latihan kekuatan",
      "icon": Icons.new_releases
    },
    {
      "headline": "Latihan Kardio",
      "description": "Jenis olahraga kardio",
      "icon": Icons.new_releases
    },
    {
      "headline": "Yoga",
      "description": "Mengenal yoga untuk kesehatan",
      "icon": Icons.new_releases
    },
    {
      "headline": "Peregangan",
      "description": "Pentingnya peregangan",
      "icon": Icons.new_releases
    },
    {
      "headline": "Jalan Kaki",
      "description": "Manfaat berjalan kaki",
      "icon": Icons.new_releases
    },
    {
      "headline": "HIIT",
      "description": "High-Intensity Interval Training",
      "icon": Icons.new_releases
    },
    {
      "headline": "Latihan Kelenturan",
      "description": "Menambah kelenturan tubuh",
      "icon": Icons.new_releases
    },
    {
      "headline": "Bersepeda",
      "description": "Keuntungan bersepeda",
      "icon": Icons.new_releases
    },
    {
      "headline": "Renang",
      "description": "Renang untuk kesehatan",
      "icon": Icons.new_releases
    },
  ];

  static List<Map<String, dynamic>> mentalHealthItems = [
    {
      "headline": "Mengelola Stres",
      "description": "Cara atasi stres",
      "icon": Icons.new_releases
    },
    {
      "headline": "Tidur Cukup",
      "description": "Dampak tidur pada mental",
      "icon": Icons.new_releases
    },
    {
      "headline": "Mindfulness",
      "description": "Berlatih mindfulness",
      "icon": Icons.new_releases
    },
    {
      "headline": "Latihan Relaksasi",
      "description": "Manfaat relaksasi",
      "icon": Icons.new_releases
    },
    {
      "headline": "Pentingnya Dukungan Sosial",
      "description": "Peran dukungan sosial",
      "icon": Icons.new_releases
    },
    {
      "headline": "Kesehatan Emosional",
      "description": "Mengelola emosi",
      "icon": Icons.new_releases
    },
    {
      "headline": "Hobi dan Mental",
      "description": "Hobi untuk kesehatan mental",
      "icon": Icons.new_releases
    },
    {
      "headline": "Meditasi",
      "description": "Teknik meditasi sederhana",
      "icon": Icons.new_releases
    },
    {
      "headline": "Mengurangi Kecemasan",
      "description": "Cara mengatasi kecemasan",
      "icon": Icons.new_releases
    },
    {
      "headline": "Produktivitas dan Mental",
      "description": "Hubungan keduanya",
      "icon": Icons.new_releases
    },
  ];

  static List<Map<String, dynamic>> heartHealthItems = [
    {
      "headline": "Diet Jantung Sehat",
      "description": "Pilihan makanan sehat",
      "icon": Icons.new_releases
    },
    {
      "headline": "Kolesterol Baik",
      "description": "Menurunkan kolesterol jahat",
      "icon": Icons.new_releases
    },
    {
      "headline": "Latihan Rutin",
      "description": "Olahraga baik untuk jantung",
      "icon": Icons.new_releases
    },
    {
      "headline": "Tekanan Darah",
      "description": "Menjaga tekanan darah",
      "icon": Icons.new_releases
    },
    {
      "headline": "Menjaga Berat Badan",
      "description": "Pentingnya berat stabil",
      "icon": Icons.new_releases
    },
    {
      "headline": "Lemak Tak Jenuh",
      "description": "Pilih lemak sehat",
      "icon": Icons.new_releases
    },
    {
      "headline": "Hindari Garam Berlebih",
      "description": "Efek garam bagi jantung",
      "icon": Icons.new_releases
    },
    {
      "headline": "Makanan Tinggi Serat",
      "description": "Serat baik untuk jantung",
      "icon": Icons.new_releases
    },
    {
      "headline": "Hindari Merokok",
      "description": "Efek buruk rokok",
      "icon": Icons.new_releases
    },
    {
      "headline": "Kontrol Gula Darah",
      "description": "Penting untuk jantung",
      "icon": Icons.new_releases
    },
  ];

  static List<Map<String, dynamic>> diabetesItems = [
    {
      "headline": "Diet Diabetes",
      "description": "Panduan diet diabetes",
      "icon": Icons.new_releases
    },
    {
      "headline": "Gula Darah Normal",
      "description": "Cara menjaga gula darah",
      "icon": Icons.new_releases
    },
    {
      "headline": "Olahraga Ringan",
      "description": "Olahraga untuk penderita diabetes",
      "icon": Icons.new_releases
    },
    {
      "headline": "Mengenal Gejala",
      "description": "Gejala diabetes awal",
      "icon": Icons.new_releases
    },
    {
      "headline": "Manajemen Karbohidrat",
      "description": "Tips mengelola karbohidrat",
      "icon": Icons.new_releases
    },
    {
      "headline": "Jenis Makanan Sehat",
      "description": "Makanan baik untuk diabetes",
      "icon": Icons.new_releases
    },
    {
      "headline": "Menghindari Gula Berlebih",
      "description": "Mengurangi konsumsi gula",
      "icon": Icons.new_releases
    },
    {
      "headline": "Insulin dan Glukosa",
      "description": "Cara kerja insulin",
      "icon": Icons.new_releases
    },
    {
      "headline": "Diet Rendah Lemak",
      "description": "Diet untuk diabetes",
      "icon": Icons.new_releases
    },
    {
      "headline": "Pola Tidur Sehat",
      "description": "Pengaruh tidur pada gula darah",
      "icon": Icons.new_releases
    },
  ];

  // Fungsi untuk mendapatkan daftar item berdasarkan kategori
  static List<Map<String, dynamic>> getItemsByCategory(String categoryTitle) {
    switch (categoryTitle) {
      case "Nutrisi":
        return nutritionItems;
      case "Olahraga":
        return exerciseItems;
      case "Mental":
        return mentalHealthItems;
      case "Jantung":
        return heartHealthItems;
      case "Diabetes":
        return diabetesItems;
      default:
        return [];
    }
  }
}
