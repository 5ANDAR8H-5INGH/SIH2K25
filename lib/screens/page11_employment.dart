// lib/screens/page11_employment.dart
import 'package:flutter/material.dart';
import 'page8_user_home.dart'; // For UserHomeContent
import 'page10_my_reports.dart'; // For Page10MyReportsContent
import 'page12_leaderboard.dart'; // For Page12LeaderboardContent

class Page11Employment extends StatefulWidget {
  const Page11Employment({super.key});

  @override
  State<Page11Employment> createState() => _Page11EmploymentState();
}

class _Page11EmploymentState extends State<Page11Employment> {
  int _currentIndex = 2; // Employment tab by default

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

class Page11EmploymentContent extends StatelessWidget {
  const Page11EmploymentContent({super.key});

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
                    color: Colors.green[900],
                    borderRadius: BorderRadius.circular(20)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: const Text(
                  'EMPLOYMENT OPPORTUNITIES',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Employment cards
          _buildEmploymentCard('Potholes', 'Gandhi Road', '01 Jan 2025',
              '5 Jan 2025', '200-300', 'Municipality Dept.'),
          _buildEmploymentCard('Drainage', 'Nanded Ground', '03 Aug 2025',
              '5 Sep 2025', '2000-3000', 'Municipality Dept.'),
        ],
      ),
    );
  }

  Widget _buildEmploymentCard(String category, String location, String date,
      String deadline, String payment, String postedBy) {
    return Column(
      children: [
        Card(
          color: Colors.green[50],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 27, 97, 32)),
                      color: Colors.white),
                  child: const Center(
                      child: Text(
                    'Image of\nyour Issue',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10),
                  )),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Category : $category',
                          style: const TextStyle(fontSize: 14)),
                      Text('Location : $location',
                          style: const TextStyle(fontSize: 14)),
                      Text('Date : $date',
                          style: const TextStyle(fontSize: 14)),
                      Text('Deadline : $deadline',
                          style: const TextStyle(fontSize: 14)),
                      Text('Payment : $payment',
                          style: const TextStyle(fontSize: 14)),
                      Text('Posted By : $postedBy',
                          style: const TextStyle(fontSize: 14)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        OutlinedButton(onPressed: () {}, child: const Text('Apply Now')),
        const SizedBox(height: 20),
      ],
    );
  }
}