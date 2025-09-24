// lib/screens/page22_analytics_department_specific.dart
import 'package:flutter/material.dart';
class Page22AnalyticsDepartmentSpecific extends StatelessWidget {
const Page22AnalyticsDepartmentSpecific({super.key});
@override
Widget build(BuildContext context) {
return Scaffold(
body: Padding(
padding: const EdgeInsets.all(16.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.start,
children: [
Row(
children: [
const Expanded(child: SizedBox()),
Container(
decoration: BoxDecoration(
color: Colors.green[900],
borderRadius: BorderRadius.circular(20),
),
padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
child: const Text(
'Analytics',
style: TextStyle(
color: Colors.white,
fontSize: 16,
fontWeight: FontWeight.bold,
),
),
),
const Expanded(child: SizedBox()),
],
),
const SizedBox(height: 20),
const Text(
'Water Supply Department',
style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
textAlign: TextAlign.center,
),
const SizedBox(height: 20),
const Text(
'View Analytics By Region',
textAlign: TextAlign.center,
style: TextStyle(color: Colors.green),
),
const SizedBox(height: 10),
const Text(
'Select Region',
textAlign: TextAlign.center,
style: TextStyle(color: Colors.green),
),
const SizedBox(height: 20),
ElevatedButton(
onPressed: () {},
style: ElevatedButton.styleFrom(
minimumSize: const Size(double.infinity, 50),
),
child: const Text('View Today’s Analytics'),
),
const SizedBox(height: 10),
ElevatedButton(
onPressed: () {},
style: ElevatedButton.styleFrom(
minimumSize: const Size(double.infinity, 50),
),
child: const Text('View Weekly Analytics'),
),
const SizedBox(height: 10),
ElevatedButton(
onPressed: () {},
style: ElevatedButton.styleFrom(
minimumSize: const Size(double.infinity, 50),
),
child: const Text('View Monthly Analytics'),
),
const SizedBox(height: 10),
ElevatedButton(
onPressed: () {},
style: ElevatedButton.styleFrom(
minimumSize: const Size(double.infinity, 50),
),
child: const Text('View Yearly Analytics'),
),
],
),
),
);
}
}