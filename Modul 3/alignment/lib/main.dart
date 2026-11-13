
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alignment',
      home: const HalamanCuaca(),
    );
  }
}

class HalamanCuaca extends StatelessWidget {
  const HalamanCuaca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cuaca'),
        backgroundColor: const Color(0xFFFFF5FC),
      ),
      body: Container(
        width: double.infinity,
        color: const Color(0xFFFFF5FC),
        child: Column(
          children: [
            const SizedBox(height: 20),

            // Nama kota
            const Text(
              'Malang',
              style: TextStyle(fontSize: 25),
            ),

            const SizedBox(height: 45),

            // Suhu saat ini
            const Text(
              '25°',
              style: TextStyle(
                fontSize:  80,
              ),
            ),

            const Spacer(flex: 3),

            // Prakiraan cuaca
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                ItemCuaca(
                  hari: 'Minggu',
                  ikon: Icons.sunny,
                  warna: Colors.black,
                  suhu: '20°C',
                ),
                ItemCuaca(
                  hari: 'Senin',
                  ikon: Icons.cloudy_snowing,
                  warna: Colors.black,
                  suhu: '23°C',
                ),
                ItemCuaca(
                  hari: 'Selasa',
                  ikon: Icons.cloud,
                  warna: Colors.black,
                  suhu: '21°C',
                ),
              ],
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),

      // Navigasi bagian bawah
      bottomNavigationBar: Container(
        height: 25,
        color: Colors.black,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.square, color: Colors.white, size: 10),
            Icon(Icons.circle_outlined, color: Colors.white, size: 10),
            Icon(Icons.arrow_back, color: Colors.white, size: 10),
          ],
        ),
      ),
    );
  }
}

class ItemCuaca extends StatelessWidget {
  final String hari;
  final IconData ikon;
  final Color warna;
  final String suhu;

  const ItemCuaca({
    super.key,
    required this.hari,
    required this.ikon,
    required this.warna,
    required this.suhu,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          hari,
          style: const TextStyle(fontSize: 10),
        ),
        const SizedBox(height: 8),
        Icon(
          ikon,
          color: warna,
          size: 30,
        ),
        const SizedBox(height: 6),
        Text(
          suhu,
          style: const TextStyle(fontSize: 11),
        ),
      ],
    );
  }
}
