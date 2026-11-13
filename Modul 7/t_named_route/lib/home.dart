import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0789C9),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Judul
              const Text(
                'Ini Halaman Home',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 24),

              // Teks pertama
              const Text(
                'Banyak aplikasi memiliki beberapa layar untuk '
                    'menampilkan informasi yang berbeda. Contohnya, '
                    'ada layar produk, dan ketika pengguna memilih '
                    'produk, akan muncul layar dengan detail produk '
                    'tersebut.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  height: 1.3,
                ),
              ),

              const SizedBox(height: 20),

              // Gambar rumah
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    'assets/rumah.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              const SizedBox(height: 22),

              // Teks kedua
              const Text(
                'Pertama, kita perlu membuat dua halaman atau "routes" '
                    'yang ingin kita tampilkan. Selanjutnya, kita gunakan '
                    'perintah Navigator.push untuk berpindah dari halaman '
                    'pertama ke halaman kedua. Ini seperti kita membuka '
                    'halaman baru dalam aplikasi. Terakhir, kita bisa '
                    'kembali dari halaman kedua menggunakan Navigator.pop(). '
                    'Seperti menutup halaman yang sedang dibuka dan kembali '
                    'ke halaman pertama.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  height: 1.3,
                ),
              ),

              const Spacer(),

              // Tombol
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/tujuan');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF573D),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Ke halaman tujuan ›',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}