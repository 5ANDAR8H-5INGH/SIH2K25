// lib/screens/page3_login.dart
import 'package:flutter/material.dart';
class Page3Login extends StatelessWidget {
const Page3Login({super.key});
@override
Widget build(BuildContext context) {
return Scaffold(
body: Padding(
padding: const EdgeInsets.all(32.0),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const Text('LOGIN', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.green)),
const Text('SIGN IN TO CONTINUE', style: TextStyle(color: Colors.green, fontSize: 16)),
const SizedBox(height: 40),
Container(
decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30)),
child: const TextField(
decoration: InputDecoration(
labelText: 'NAME',
labelStyle: TextStyle(color: Colors.black),
border: InputBorder.none,
contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
),
style: TextStyle(color: Colors.black),
),
),
const SizedBox(height: 20),
Container(
decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30)),
child: const TextField(
decoration: InputDecoration(
labelText: 'PASSWORD',
labelStyle: TextStyle(color: Colors.black),
border: InputBorder.none,
contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
),
obscureText: true,
style: TextStyle(color: Colors.black),
),
),
const SizedBox(height: 20),
ElevatedButton(
onPressed: () => Navigator.pushNamed(context, '/role_selection'),
style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50), backgroundColor: Colors.green, foregroundColor: Colors.white),
child: const Text('Log in'),
),
const SizedBox(height: 10),
TextButton(
onPressed: () => Navigator.pushNamed(context, '/forgot_password'),
child: const Text('FORGOT PASSWORD ?', style: TextStyle(color: Colors.green, fontSize: 14)),
),
const SizedBox(height: 5),
TextButton(
onPressed: () => Navigator.pushReplacementNamed(context, '/sign_up'),
child: const Text('SIGN UP', style: TextStyle(color: Colors.green, fontSize: 14, decoration: TextDecoration.underline)),
),
],
),
),
);
}
}