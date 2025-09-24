// lib/screens/page7_role_selection.dart
import 'package:flutter/material.dart';
class Page7RoleSelection extends StatelessWidget {
const Page7RoleSelection({super.key});
@override
Widget build(BuildContext context) {
return Scaffold(
body: Padding(
padding: const EdgeInsets.all(32.0),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const Text('Role', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.green)),
const Text('Selection', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.green)),
const SizedBox(height: 40),
ElevatedButton(
onPressed: () => Navigator.pushReplacementNamed(context, '/admin_home'),
style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50), backgroundColor: Colors.green, foregroundColor: Colors.white),
child: const Text('SUPER ADMIN'),
),
const SizedBox(height: 20),
ElevatedButton(
onPressed: () => Navigator.pushReplacementNamed(context, '/user_home'),
style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50), backgroundColor: Colors.green, foregroundColor: Colors.white),
child: const Text('USER'),
),
],
),
),
);
}
}