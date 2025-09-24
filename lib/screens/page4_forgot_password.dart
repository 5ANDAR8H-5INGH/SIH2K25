// lib/screens/page4_forgot_password.dart
import 'package:flutter/material.dart';
class Page4ForgotPassword extends StatelessWidget {
const Page4ForgotPassword({super.key});
@override
Widget build(BuildContext context) {
return Scaffold(
body: Padding(
padding: const EdgeInsets.all(32.0),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
IconButton(
icon: const Icon(Icons.arrow_back, color: Colors.green),
onPressed: () => Navigator.pop(context),
alignment: Alignment.topLeft,
),
const Text('Oh, No !', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.green)),
const Text('I forgot', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.green)),
const SizedBox(height: 20),
const Text('Enter your email, phone, or username and we will send you a link to change a new password', style: TextStyle(color: Colors.green, fontSize: 16)),
const SizedBox(height: 40),
const TextField(decoration: InputDecoration(labelText: 'Username ,Email or Phone Number')),
const SizedBox(height: 20),
ElevatedButton(
onPressed: () => Navigator.pop(context), // Simulate send
style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50), backgroundColor: Colors.green, foregroundColor: Colors.white),
child: const Text('Reset Password'),
),
const SizedBox(height: 10),
TextButton(
onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/sign_up', (route) => false),
child: const Text("Don’t Have an account ? Sign Up", style: TextStyle(color: Colors.green, fontSize: 14)),
),
],
),
),
);
}
}