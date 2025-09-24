// lib/screens/page14_admin_home.dart
import 'package:flutter/material.dart';
import 'page15_report_management.dart';
import 'page16_employee_management_list.dart';
import 'page18_department_management.dart';

class Page14AdminHome extends StatefulWidget {
  const Page14AdminHome({super.key});

  @override
  State<Page14AdminHome> createState() => _Page14AdminHomeState();
}

class _Page14AdminHomeState extends State<Page14AdminHome> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const AdminHomeContent(),
    const Page15ReportManagement(),
    const Page16EmployeeManagementList(),
    const Page18DepartmentManagement(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        backgroundColor: Colors.green[50],
        selectedItemColor: Colors.green[900],
        unselectedItemColor: Colors.green[900],
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.report), label: 'Report Management'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Employment Management'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Department Management'),
        ],
      ),
    );
  }
}

class AdminHomeContent extends StatelessWidget {
  const AdminHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hello, Admin',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.notifications_none, color: Colors.green),
                onPressed: () {},
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/admin_profile'),
                child: const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 200, 230, 201),
                  radius: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
  decoration: BoxDecoration(
    color: Colors.white, // ✅ white background
    borderRadius: BorderRadius.circular(30),
    border: Border.all(color: Colors.grey.shade300, width: 1), // ✅ light grey border
  ),
  child: const TextField(
    decoration: InputDecoration(
      border: InputBorder.none,
      prefixIcon: Icon(Icons.search, color: Colors.grey), // ✅ grey icon
      contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      hintText: 'Search issue by location',
      hintStyle: TextStyle(
        color: Colors.grey, // ✅ grey hint
      ),
    ),
    style: TextStyle(color: Colors.black87), // ✅ readable input text
  ),
),

          const SizedBox(height: 20),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {}, // Placeholder
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text('Total Reports Today'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {}, // Placeholder
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text('Marked As Urgency Reports'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {}, // Placeholder
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text('Search Issue By Category'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
