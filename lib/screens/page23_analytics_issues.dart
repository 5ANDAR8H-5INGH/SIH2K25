// lib/screens/page23_analytics_issues.dart
import 'package:flutter/material.dart';
class Page23AnalyticsIssues extends StatelessWidget {
const Page23AnalyticsIssues({super.key});
@override
Widget build(BuildContext context) {
return Scaffold(
body: Padding(
padding: const EdgeInsets.all(16.0),
child: Column(
children: [
Row(
children: [
IconButton(icon: const Icon(Icons.arrow_back, color: Colors.green), onPressed: () => Navigator.pop(context)),
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
const Text('Most reported issues by category', style: TextStyle(color: Colors.green)),
const SizedBox(height: 20),
const ListTile(title: Text('1. Potholes : 8 Cases/week')),
const ListTile(title: Text('2. Sanitation Issue : 400 Cases/Day')),
const ListTile(title: Text('3. Electricity Issue : 200 Cases/Day')),
],
),
),
);
}
}