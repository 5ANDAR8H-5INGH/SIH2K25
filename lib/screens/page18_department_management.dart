// lib/screens/page18_department_management.dart
import 'package:flutter/material.dart';

class Page18DepartmentManagement extends StatelessWidget {
  const Page18DepartmentManagement({super.key});

  @override
  Widget build(BuildContext context) {
    final departments = [
      {"title": "Water Supply Department", "icon": Icons.water_drop},
      {"title": "Electricity Department", "icon": Icons.bolt},
      {"title": "Road and Bridges Department", "icon": Icons.add_road},
      {"title": "Other Utility Department", "icon": Icons.build},
      {"title": "Sanitation Department", "icon": Icons.cleaning_services},
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Top title bar
          Row(
            children: [
              const Expanded(child: SizedBox()),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green[900],
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: const Text(
                  'DEPARTMENT MANAGEMENT',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
          const SizedBox(height: 20),

          // Buttons list with icons
          ...departments.map(
            (dept) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: ElevatedButton.icon(
                onPressed: () {}, // Placeholder
                icon: Icon(dept["icon"] as IconData, color: Colors.white),
                label: Text(dept["title"] as String),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 23, 24, 23),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 55),
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
