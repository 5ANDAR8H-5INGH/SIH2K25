// lib/screens/page10_my_reports.dart
import 'package:flutter/material.dart';
import 'page8_user_home.dart'; // For UserHomeContent
import 'page11_employment.dart'; // For Page11EmploymentContent
import 'page12_leaderboard.dart'; // For Page12LeaderboardContent

class Page10MyReports extends StatefulWidget {
  const Page10MyReports({super.key});

  @override
  State<Page10MyReports> createState() => _Page10MyReportsState();
}

class _Page10MyReportsState extends State<Page10MyReports> {
  int _currentIndex = 1; // My Reports tab by default

  final List<Widget> _pages = [
    const UserHomeContent(), // Index 0: Home
    const Page10MyReportsContent(), // Index 1: My Reports
    const Page11EmploymentContent(), // Index 2: Employment
    const Page12LeaderboardContent(), // Index 3: Leader Board
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        type: BottomNavigationBarType.fixed, // prevents shifting issues
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.description), label: 'My Reports'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Employment'),
          BottomNavigationBarItem(icon: Icon(Icons.leaderboard), label: 'Leader Board'),
        ],
      ),
    );
  }
}

class Page10MyReportsContent extends StatelessWidget {
  const Page10MyReportsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Title bar (without back button)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: const Text(
                  'MY REPORTS',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Search bar with white/grey style
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                prefixIcon: Icon(Icons.search, color: Color.fromARGB(255, 56, 53, 53)),
                hintText: 'Search your reports',
                hintStyle: TextStyle(color: Color.fromARGB(255, 53, 49, 49)),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Report cards
          _buildReportCard(
              'Potholes', 'Gandhi Road', '01 Jan 2025', 'In Progress', Colors.orange),
          _buildReportCard(
              'Drainage', 'Nanded Ground', '9 April 2025', 'Pending', Colors.red),
          _buildReportCard('Water Supply', 'Dwarka Appartments',
              '23 May 2025', 'Resolved', Colors.green),
          const SizedBox(height: 10),

          const Align(
            alignment: Alignment.centerLeft,
            child: Text('Rate : ★★★',
                style: TextStyle(color: Colors.green, fontSize: 14)),
          ),
        ],
      ),
    );
  }

  Widget _buildReportCard(
      String category, String location, String date, String status, Color dotColor) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green), color: Colors.white),
              child: const Center(
                  child: Text(
                'Image of report',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10),
              )),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Category : $category',
                    style: const TextStyle(fontSize: 14)),
                Text('Location : $location',
                    style: const TextStyle(fontSize: 14)),
                Text('Date : $date', style: const TextStyle(fontSize: 14)),
                Row(
                  children: [
                    Text('Status : $status',
                        style: const TextStyle(fontSize: 14)),
                    const SizedBox(width: 10),
                    CircleAvatar(radius: 5, backgroundColor: dotColor),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}