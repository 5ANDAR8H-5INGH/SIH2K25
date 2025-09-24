// lib/screens/page12_leaderboard.dart
import 'package:flutter/material.dart';
import 'page8_user_home.dart'; // For UserHomeContent
import 'page10_my_reports.dart'; // For Page10MyReportsContent
import 'page11_employment.dart'; // For Page11EmploymentContent

class Page12Leaderboard extends StatefulWidget {
  const Page12Leaderboard({super.key});

  @override
  State<Page12Leaderboard> createState() => _Page12LeaderboardState();
}

class _Page12LeaderboardState extends State<Page12Leaderboard> {
  int _currentIndex = 3; // Leaderboard tab by default

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
          BottomNavigationBarItem(
              icon: Icon(Icons.description), label: 'My Reports'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Employment'),
          BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard), label: 'Leader Board'),
        ],
      ),
    );
  }
}

class Page12LeaderboardContent extends StatelessWidget {
  const Page12LeaderboardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea( // ✅ keeps content inside safe bounds
      child: SingleChildScrollView( // ✅ prevents overflow at bottom
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title bar (centered, no back button)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green[900],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: const Text(
                    'Leaderboard',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            OutlinedButton(onPressed: () {}, child: const Text('Citizen')),
            const SizedBox(height: 10),
            const Text('Points Earned: 750',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green)),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.info_outline,
                  color: Color.fromARGB(255, 57, 144, 61)),
              title: Text('How points are earned',
                  style: TextStyle(color: Color.fromARGB(255, 57, 146, 62))),
            ),
            const SizedBox(height: 10),

            // Leaderboard card
            Card(
              color: Colors.green[50],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const ListTile(
                      title: Text('Leaderboard [Citizens | Workers] [Info]',
                          style: TextStyle(fontSize: 14)),
                    ),
                    _buildRankRow(1, 'Sanjay S.', 'Ward 5, Ranchi', '1200 pts',
                        Colors.yellow),
                    _buildRankRow(2, 'Ramesh K.', 'Ward 7, Jamshedpur', '950 pts',
                        Colors.grey),
                    _buildRankRow(3, 'Anita P.', 'Ward 3, Dhanbad', '870 pts',
                        Colors.brown),
                    const ListTile(
                      leading: Text('4'),
                      title: Text('Sunil M.'),
                      subtitle: Text('Ward 1, Bokaro'),
                      trailing: Text('800 pts'),
                    ),
                    const ListTile(
                      leading: Text('5'),
                      title: Text('Rani T.'),
                      subtitle: Text('Ward 2, Ranchi'),
                      trailing: Text('760 pts'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            TextButton(
              onPressed: () {}, // Placeholder
              child: const Text('View My Rank and Rewards',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.green)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRankRow(
      int rank, String name, String ward, String pts, Color color) {
    return ListTile(
      leading: CircleAvatar(
          backgroundColor: color,
          child: Text('$rank', style: const TextStyle(color: Colors.white))),
      title: Text(name),
      subtitle: Text(ward),
      trailing: Text(pts),
    );
  }
}