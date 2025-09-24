// lib/screens/page13_user_profile.dart
import 'package:flutter/material.dart';
class Page13UserProfile extends StatelessWidget {
const Page13UserProfile({super.key});
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
child: const Text('Profile', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
),
const Expanded(child: SizedBox()),
],
),
const SizedBox(height: 20),
const Text('Hello, User', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.green)),
const SizedBox(height: 20),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const CircleAvatar(radius: 30, backgroundColor: Colors.white, child: Text('S', style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 27, 95, 32)))),
const SizedBox(width: 20),
const CircleAvatar(radius: 30, backgroundColor: Color.fromARGB(255, 196, 225, 197), child: Icon(Icons.add, color: Color.fromARGB(255, 27, 95, 31))),
],
),
const SizedBox(height: 5),
const Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text('Person 1', style: TextStyle(color: Color.fromARGB(255, 57, 147, 62))),
SizedBox(width: 40),
Text('Add', style: TextStyle(color: Color.fromARGB(255, 57, 144, 61))),
],
),
const SizedBox(height: 20),
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
OutlinedButton(onPressed: () {}, child: const Text('Issues Reported')),
OutlinedButton(onPressed: () {}, child: const Text('Resolved')),
],
),
const SizedBox(height: 10),
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
OutlinedButton(onPressed: () {}, child: const Text('Rewards')),
OutlinedButton(onPressed: () {}, child: const Text('Pending')),
],
),
const SizedBox(height: 10),
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
OutlinedButton(onPressed: () {}, child: const Text('My Reports')),
OutlinedButton(onPressed: () {}, child: const Text('Manage Account')),
],
),
const SizedBox(height: 20),
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
OutlinedButton(onPressed: () {}, child: const Text('Settings')),
OutlinedButton(onPressed: () {}, child: const Text('Help Center')),
OutlinedButton(onPressed: () => Navigator.popUntil(context, (route) => route.isFirst), child: const Text('Log Out →')),
],
),
const SizedBox(height: 20),
const Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text('FAQs', style: TextStyle(color: Color.fromARGB(255, 53, 137, 57))),
Text('About Us', style: TextStyle(color: Color.fromARGB(255, 55, 142, 59))),
Text('Term of Use', style: TextStyle(color: Color.fromARGB(255, 55, 141, 59))),
],
),
],
),
),
);
}
}