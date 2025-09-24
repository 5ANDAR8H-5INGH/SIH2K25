// lib/screens/page15_report_management.dart
import 'package:flutter/material.dart';
class Page15ReportManagement extends StatelessWidget {
const Page15ReportManagement({super.key});
@override
Widget build(BuildContext context) {
return Padding(
padding: const EdgeInsets.all(16.0),
child: Column(
children: [
Row(
children: [
const Expanded(child: SizedBox()),
Container(
decoration: BoxDecoration(color: Colors.green[900], borderRadius: BorderRadius.circular(20)),
padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
child: const Text('REPORT MANAGEMENT', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
),
const Expanded(child: SizedBox()),
],
),
const SizedBox(height: 20),
Container(
  decoration: BoxDecoration(
    color: Colors.white, // ✅ white background
    borderRadius: BorderRadius.circular(30),
    border: Border.all(color: Colors.grey.shade300, width: 1), // ✅ subtle grey border
  ),
  child: const TextField(
    decoration: InputDecoration(
      border: InputBorder.none,
      prefixIcon: Icon(Icons.search, color: Colors.grey), // ✅ grey search icon
      contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      hintText: 'Search reports',
      hintStyle: TextStyle(color: Colors.grey), // ✅ grey hint text
    ),
    style: TextStyle(color: Colors.black87), // ✅ input text in dark color
  ),
),

const SizedBox(height: 20),
_buildAdminReportCard('Potholes', 'Gandhi Road', '01 Jan 2025', 'Sandarbh Singh'),
_buildAdminReportCard('Drainage', 'Nanded Ground', '9 April 2025', 'Vyankatush '),
_buildAdminReportCard('Water Supply', 'Dwarka Appartments', '23 May 2025', 'Srushti Paitwar'),
],
),
);
}
Widget _buildAdminReportCard(String category, String location, String date, String postedBy) {
return Card(
color: Colors.green[50],
child: Padding(
padding: const EdgeInsets.all(8.0),
child: Row(
children: [
Container(width: 60, height: 60, decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 27, 94, 32))), child: const Center(child: Text('Report'))),
const SizedBox(width: 10),
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text('Category : $category'),
Text('Location : $location'),
Text('Date : $date'),
Text('Posted By: $postedBy'),
],
),
],
),
),
);
}
}