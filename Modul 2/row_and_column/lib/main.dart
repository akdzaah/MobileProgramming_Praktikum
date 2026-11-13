import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakWarniDenganTeks(warnaKotak: Colors.purple, labelTeks: 'Ungu'),
                  SizedBox(width: 10),
                  KotakWarniDenganTeks(warnaKotak: Colors.green, labelTeks: 'Hijau'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakWarniDenganTeks(warnaKotak: Colors.blue, labelTeks: 'Biru'),
                  SizedBox(width: 10),
                  KotakWarniDenganTeks(warnaKotak: Colors.orange, labelTeks: 'Oranye'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class KotakWarniDenganTeks extends StatelessWidget {
  final Color warnaKotak;
  final String labelTeks;

  const KotakWarniDenganTeks({required this.warnaKotak, required this.labelTeks});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 100,
      decoration: BoxDecoration(
        color: warnaKotak,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: 35,
          ),
          const SizedBox(height: 5),
          Text(
            labelTeks,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}