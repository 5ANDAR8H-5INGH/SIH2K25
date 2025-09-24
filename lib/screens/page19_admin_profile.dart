// lib/screens/page19_admin_profile.dart
import 'package:flutter/material.dart';
class Page19AdminProfile extends StatelessWidget {
const Page19AdminProfile({super.key});
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
child: const Text('Profile', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
),
const Expanded(child: SizedBox()),
],
),
const SizedBox(height: 20),
const Text('Hello, Admin', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.green)),
const SizedBox(height: 20),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const CircleAvatar(radius: 30, backgroundColor: Colors.white, child: Text('S', style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 27, 94, 32)))),
const SizedBox(width: 20),
const CircleAvatar(radius: 30, backgroundColor: Color.fromARGB(255, 200, 230, 201), child: Icon(Icons.add, color: Color.fromARGB(255, 27, 94, 32))),
],
),
const SizedBox(height: 5),
const Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text('Person 1', style: TextStyle(color: Color.fromARGB(255, 56, 142, 60))),
SizedBox(width: 40),
Text('Add+', style: TextStyle(color: Color.fromARGB(255, 56, 142, 60))),
],
),
const SizedBox(height: 20),
Row(
mainAxisAlignment: MainAxisAlignment.start,
children: [
Expanded(
child: Column(
children: [
OutlinedButton(onPressed: () {}, child: const Text('Resolved')),
OutlinedButton(onPressed: () {}, child: const Text('Pending')),
OutlinedButton(onPressed: () {}, child: const Text('Manage Account')),
OutlinedButton(onPressed: () {}, child: const Text('Worker Payment Pending')),
OutlinedButton(onPressed: () {}, child: const Text('Red Zone Areas')),
OutlinedButton(onPressed: () {}, child: const Text('Orange Zone Areas')),
OutlinedButton(onPressed: () {}, child: const Text('Green Zone Areas')),
],
),
),
Expanded(
child: Column(
children: [
OutlinedButton(onPressed: () {}, child: const Text('Best Employee')),
OutlinedButton(onPressed: () => Navigator.pushNamed(context, '/analytics_general'), child: const Text('View Analytics')),
OutlinedButton(onPressed: () {}, child: const Text('Notifications')),
OutlinedButton(onPressed: () {}, child: const Text('Settings')),
OutlinedButton(onPressed: () {}, child: const Text('Rewards')),
OutlinedButton(onPressed: () {}, child: const Text('Help Center')),
OutlinedButton(onPressed: () => Navigator.popUntil(context, (route) => route.isFirst), child: const Text('Log Out →')),
],
),
),
],
),
const SizedBox(height: 20),
const Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text('FAQs', style: TextStyle(color: Color.fromARGB(255, 56, 142, 60))),
Text('About Us', style: TextStyle(color: Color.fromARGB(255, 56, 142, 60))),
Text('Term of Use', style: TextStyle(color: Color.fromARGB(255, 56, 142, 60))),
],
),
],
),
),
);
}
}
