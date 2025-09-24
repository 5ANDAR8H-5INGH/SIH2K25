// lib/screens/page16_employee_management_list.dart (Fixed by passing context to _buildEmployeeCard)
import 'package:flutter/material.dart';
class Page16EmployeeManagementList extends StatelessWidget {
const Page16EmployeeManagementList({super.key});
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
child: const Text('EMPLOYEE MANAGEMENT', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
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
      hintText: 'Search For Employee',
      hintStyle: TextStyle(color: Colors.grey), // ✅ grey placeholder
    ),
    style: TextStyle(color: Colors.black87), // ✅ actual input text
  ),
),

const SizedBox(height: 20),
_buildEmployeeCard(context, 'Shravani Bardi', '55 years', '19 Jan 1970'),
_buildEmployeeCard(context, 'Anya Porwal', '25 years', '19 Jan 2000'),
_buildEmployeeCard(context, 'Garima', '30 years', '19 Jan 1995'),
],
),
);
}
Widget _buildEmployeeCard(BuildContext context, String name, String age, String dob) {
return GestureDetector(
onTap: () => Navigator.pushNamed(context, '/employee_management_detail'),
child: Card(
color: Colors.green[50],
child: Padding(
padding: const EdgeInsets.all(8.0),
child: Row(
children: [
Container(width: 60, height: 60, decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 27, 94, 32))), child: const Center(child: Text('Image'))),
const SizedBox(width: 10),
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text('Name : $name'),
Text('Age : $age'),
Text('DOB : $dob'),
],
),
],
),
),
),
);
}
}