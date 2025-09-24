// lib/screens/page20_analytics_general.dart
import 'package:flutter/material.dart';
class Page20AnalyticsGeneral extends StatelessWidget {
const Page20AnalyticsGeneral({super.key});
Widget build(BuildContext context) {
return Scaffold(
body: Padding(
padding: const EdgeInsets.all(16.0),
child: Column(
children: [
Row(
children: [
const Expanded(child: SizedBox()),
Container(
decoration: BoxDecoration(color: Colors.green[900], borderRadius: BorderRadius.circular(20)),
padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
child: const Text('Analytics', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
),
const Expanded(child: SizedBox()),
],
),
const SizedBox(height: 20),
Container(
decoration: BoxDecoration(color: const Color.fromARGB(255, 227, 237, 227), borderRadius: BorderRadius.circular(30)),
child: const TextField(
decoration: InputDecoration(
border: InputBorder.none,
contentPadding: EdgeInsets.all(16),
hintText: 'Search Progress by location',
hintStyle: TextStyle(color: Color.fromARGB(255, 20, 20, 20)),
),
),
),
const SizedBox(height: 20),
ElevatedButton(
onPressed: () => Navigator.pushNamed(context, '/analytics_issues'),
style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50)),
child: const Text('Most reported issues by category'),
),
const SizedBox(height: 10),
ElevatedButton(
onPressed: () {}, // Placeholder for map
style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50)),
child: const Text('Hotspot areas (map-based)'),
),
const SizedBox(height: 10),
ElevatedButton(
onPressed: () => Navigator.pushNamed(context, '/analytics_departments'),
style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50)),
child: const Text('Department-wise resolution time'),
),
],
),
),
);
}
}