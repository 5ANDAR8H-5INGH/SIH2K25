// lib/screens/page6_select_language.dart
import 'package:flutter/material.dart';
class Page6SelectLanguage extends StatelessWidget {
const Page6SelectLanguage({super.key});
@override
Widget build(BuildContext context) {
return Scaffold(
body: Padding(
padding: const EdgeInsets.all(32.0),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const Text('Select Your', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.green)),
const Text('Language', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.green)),
const SizedBox(height: 40),
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/role_selection'), style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.white), child: const Text('English')), // Default English
OutlinedButton(onPressed: () {}, style: OutlinedButton.styleFrom(foregroundColor: Colors.green), child: const Text('हिन्दी')),
],
),
const SizedBox(height: 20),
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
OutlinedButton(onPressed: () {}, style: OutlinedButton.styleFrom(foregroundColor: Colors.green), child: const Text('বাংলা')),
OutlinedButton(onPressed: () {}, style: OutlinedButton.styleFrom(foregroundColor: Colors.green), child: const Text('தமிழ்')),
],
),
const SizedBox(height: 20),
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
OutlinedButton(onPressed: () {}, style: OutlinedButton.styleFrom(foregroundColor: Colors.green), child: const Text('తెలుగు')),
OutlinedButton(onPressed: () {}, style: OutlinedButton.styleFrom(foregroundColor: Colors.green), child: const Text('ગુજરાતી')),
],
),
const SizedBox(height: 20),
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
OutlinedButton(onPressed: () {}, style: OutlinedButton.styleFrom(foregroundColor: Colors.green), child: const Text('മലയാളം')),
OutlinedButton(onPressed: () {}, style: OutlinedButton.styleFrom(foregroundColor: Colors.green), child: const Text('संस्कृतम्')),
],
),
],
),
),
);
}
}