
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
      title: 'Pemutar Musik',
      theme: ThemeData.dark(),
      home: const HalamanMusik(),
    );
  }
}

class HalamanMusik extends StatelessWidget {
  const HalamanMusik({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Pemutar Musik',
          style: TextStyle(fontSize: 16),
        ),
      ),

      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 10,
        ),
        color: Colors.black54,
        child: Row(
          children: [
            // Tombol Shuffle
            Expanded(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shuffle,
                  color: Colors.white,
                ),
              ),
            ),

            // Tombol Previous
            Expanded(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.skip_previous,
                  color: Colors.white,
                ),
              ),
            ),

            // Tombol Play dibuat lebih besar
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_circle_fill,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),

            // Tombol Next
            Expanded(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.skip_next,
                  color: Colors.white,
                ),
              ),
            ),

            // Tombol Repeat
            Expanded(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.repeat,
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
