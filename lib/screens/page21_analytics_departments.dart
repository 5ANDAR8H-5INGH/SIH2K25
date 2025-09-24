// lib/screens/page21_analytics_departments.dart
import 'package:flutter/material.dart';
class Page21AnalyticsDepartments extends StatelessWidget {
const Page21AnalyticsDepartments({super.key});
@override
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
const Text('Select Departments', style: TextStyle(color: Colors.green)),
const SizedBox(height: 20),
ElevatedButton(
onPressed: () => Navigator.pushNamed(context, '/analytics_department_specific'),
style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50)),
child: const Text('Water Supply Department'),
),
const SizedBox(height: 10),
ElevatedButton(
onPressed: () {}, // Placeholder
style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50)),
child: const Text('Sanitation Department'),
),
const SizedBox(height: 10),
ElevatedButton(
onPressed: () {}, // Placeholder
style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50)),
child: const Text('Electricity Department'),
),
const SizedBox(height: 10),
ElevatedButton(
onPressed: () {}, // Placeholder
style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50)),
child: const Text('Other Utility Department'),
),
],
),
),
);
}
}