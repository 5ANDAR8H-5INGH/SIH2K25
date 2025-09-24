// lib/screens/page2_sign_up.dart
import 'package:flutter/material.dart';
class Page2SignUp extends StatelessWidget {
const Page2SignUp({super.key});
@override
Widget build(BuildContext context) {
return Scaffold(
body: Padding(
padding: const EdgeInsets.all(32.0),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.start,
children: [
IconButton(
icon: const Icon(Icons.arrow_back, color: Colors.green),
onPressed: () => Navigator.pop(context),
alignment: Alignment.topLeft,
),
const Text('HI !', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.green)),
const Text('WELCOME', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.green)),
const Text("Let's create an account", style: TextStyle(color: Colors.green, fontSize: 16)),
const SizedBox(height: 20),
const TextField(decoration: InputDecoration(labelText: 'Email or Phone Number')),
const SizedBox(height: 10),
const TextField(decoration: InputDecoration(labelText: 'Full Name')),
const SizedBox(height: 10),
const TextField(decoration: InputDecoration(labelText: 'Username')),
const SizedBox(height: 10),
const TextField(
decoration: InputDecoration(labelText: 'Password'),
obscureText: true,
),
const Text('Must contain a number and 6 character', style: TextStyle(color: Colors.green, fontSize: 12)),
const SizedBox(height: 10),
const TextField(
decoration: InputDecoration(labelText: 'Confirm Password'),
obscureText: true,
),
const Text('Must contain a number and 6 character', style: TextStyle(color: Colors.green, fontSize: 12)),
const SizedBox(height: 20),
ElevatedButton(
onPressed: () => Navigator.pushNamed(context, '/add_profile'),
style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50), backgroundColor: Colors.green, foregroundColor: Colors.white),
child: const Text('Sign Up'),
),
const SizedBox(height: 10),
TextButton(
onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false),
child: const Text('Have an account ? Log in', style: TextStyle(color: Colors.green)),
),
],
),
),
);
}
}
