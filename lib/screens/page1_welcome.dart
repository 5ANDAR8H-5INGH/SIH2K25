// lib/screens/page1_welcome.dart
import 'package:flutter/material.dart';

class Page1Welcome extends StatelessWidget {
  const Page1Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('WELCOME TO',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Text('URBAN EYE',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            // Custom logo
            Image.asset(
              'assets/images/urban_eye_logo.jpg',
              height: 150,
            ),
            const SizedBox(height: 20),
            const Text('Connecting citizens, workers, and government for a',
                style: TextStyle(color: Colors.black, fontSize: 16)),
            const Text('cleaner tomorrow.',
                style: TextStyle(color: Colors.black, fontSize: 16)),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/login'),
              child: const Text("Let's Get Started"),
            ),
          ],
        ),
      ),
    );
  }
}
