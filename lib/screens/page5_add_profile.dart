// lib/screens/page5_add_profile.dart
import 'package:flutter/material.dart';
class Page5AddProfile extends StatelessWidget {
const Page5AddProfile({super.key});
@override
Widget build(BuildContext context) {
return Scaffold(
body: Padding(
padding: const EdgeInsets.all(32.0),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.start,
children: [
IconButton(
icon: const Icon(Icons.arrow_back, color: Colors.green),
onPressed: () => Navigator.pop(context),
),
const Text('Add more to your', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.green)),
const Text('Profile', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.green)),
const SizedBox(height: 40),
const TextField(decoration: InputDecoration(labelText: 'Address')),
const SizedBox(height: 10),
const TextField(decoration: InputDecoration(labelText: 'Locality/Landmark')),
const SizedBox(height: 10),
const TextField(decoration: InputDecoration(labelText: 'City')),
const SizedBox(height: 10),
const TextField(decoration: InputDecoration(labelText: 'State')),
const SizedBox(height: 10),
const TextField(decoration: InputDecoration(labelText: 'Country')),
const SizedBox(height: 40),
ElevatedButton(
onPressed: () => Navigator.pushNamed(context, '/select_language'),
style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50), backgroundColor: Colors.green, foregroundColor: Colors.white),
child: const Text('UPDATE'),
),
],
),
),
);
}
}