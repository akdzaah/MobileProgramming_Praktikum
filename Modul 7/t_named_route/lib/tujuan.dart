import 'package:flutter/material.dart';

class Tujuan extends StatelessWidget {
  const Tujuan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF4935),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Judul
              const Text(
                'Ini Halaman Tujuan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 24),

              // Teks pertama
              const Text(
                'Untuk berpindah ke halaman baru, gunakan metode '
                    'Navigator.pushNamed(). Metode push() akan menambahkan '
                    'Route ke dalam tumpukan Route yang dikelola oleh '
                    'Navigator. Route ini dapat dibuat secara kustom atau '
                    'menggunakan MaterialPageRoute, yang memiliki animasi '
                    'transisi sesuai dengan platform yang digunakan.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  height: 1.3,
                ),
              ),

              const SizedBox(height: 20),

              // Gambar pulau
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
                    'assets/pulau.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              const SizedBox(height: 22),

              // Teks kedua
              const Text(
                'Untuk menutup halaman kedua dan kembali ke halaman '
                    'pertama, gunakan metode Navigator.pop(). Metode pop() '
                    'akan menghapus Route saat ini dari tumpukan Route yang '
                    'dikelola oleh Navigator.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  height: 1.3,
                ),
              ),

              const Spacer(),

              // Tombol kembali
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0789C9),
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
                    '‹ Kembali ke home',
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