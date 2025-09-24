import 'package:flutter/material.dart';
import 'page10_my_reports.dart';
import 'page11_employment.dart';
import 'page12_leaderboard.dart';

class Page8UserHome extends StatefulWidget {
  const Page8UserHome({super.key});

  @override
  State<Page8UserHome> createState() => _Page8UserHomeState();
}

class _Page8UserHomeState extends State<Page8UserHome> {
  int _currentIndex = 0;

final List<Widget> _pages = [
  const UserHomeContent(),
  const Page10MyReportsContent(),
  const Page11EmploymentContent(),
  const Page12LeaderboardContent(),
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

class UserHomeContent extends StatelessWidget {
  const UserHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( // ✅ makes content scrollable
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.green),
                onPressed: () => Navigator.pop(context),
              ),
              const Text(
                'Hello, User',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.green),
              ),
              Row(
                children: [
                  IconButton(icon: const Icon(Icons.notifications_none, color: Colors.green), onPressed: () {}),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/user_profile'),
                    child: const CircleAvatar(backgroundColor: Colors.green, radius: 16),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(color: Colors.green.shade50, borderRadius: BorderRadius.circular(30)),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                prefixIcon: Icon(Icons.search, color: Color.fromARGB(255, 180, 205, 181)),
                hintText: 'Search issue by location',
                hintStyle: TextStyle(color: Color.fromARGB(255, 26, 28, 26)),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/issue_reporting'),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
            child: const Text('Report your issues here'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {}, // Placeholder for map
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
            child: const Text('Map of your locality'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {}, // Placeholder for volunteer
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
            child: const Text('Volunteer'),
          ),
          const SizedBox(height: 20),
          const Text(
            'DIRECT CONTACT WITH MUNICIPAL COOPERATION',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          const Text(
            'Help Line Number : ',
            style: TextStyle(fontSize: 12, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
