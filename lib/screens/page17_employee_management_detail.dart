// lib/screens/page17_employee_management_detail.dart
import 'package:flutter/material.dart';
class Page17EmployeeManagementDetail extends StatelessWidget {
const Page17EmployeeManagementDetail({super.key});
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
child: const Text('EMPLOYEE MANAGEMENT', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
),
const Expanded(child: SizedBox()),
],
),
const SizedBox(height: 20),
Card(
color: Colors.green[100],
child: Padding(
padding: const EdgeInsets.all(8.0),
child: Row(
children: [
Container(width: 80, height: 80, decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 29, 101, 34))), child: const Center(child: Text('Image'))),
const SizedBox(width: 10),
const Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text('Name : Shravani Bardi'),
Text('Age : 55 years'),
Text('DOB : 19 Jan 1970'),
SizedBox(height: 10),
Text('Applied For the task : Report 1'),
Text('Date of Apply : 07 July 2025'),
Text('Category : Potholes'),
Text('Experience : 5 years'),
Text('Location of Employee : Vani'),
Text('Rating of Employee : ★★'),
Text('Last Job : Construction Worker'),
],
),
),
],
),
),
),
],
),
),
);
}
}