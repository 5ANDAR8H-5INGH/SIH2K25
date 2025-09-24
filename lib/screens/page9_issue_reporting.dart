import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Page9IssueReporting extends StatefulWidget {
  const Page9IssueReporting({super.key});

  @override
  State<Page9IssueReporting> createState() => _Page9IssueReportingState();
}

class _Page9IssueReportingState extends State<Page9IssueReporting> {
  File? _image;
  bool _isUrgent = false;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( // ✅ ensures UI doesn’t overlap system areas
        child: SingleChildScrollView( // ✅ keeps bottom nav always visible
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // ✅ Top bar without back button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: const Text(
                      'ISSUE REPORTING',
                      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Description
              const Text(
                'What issues you are facing describe in detail',
                style: TextStyle(color: Colors.green, fontSize: 16),
              ),
              const SizedBox(height: 10),

              // ✅ Changed to white/grey search box
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200, // light grey background
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(16),
                    hintText: 'TYPE YOUR ISSUE HERE',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                  maxLines: 3,
                ),
              ),
              const SizedBox(height: 20),

              // Upload Image
              GestureDetector(
                onTap: _pickImage,
                child: const ListTile(
                  title: Text('+ Upload Image', style: TextStyle(color: Colors.green, fontSize: 16)),
                ),
              ),
              if (_image != null) Image.file(_image!, height: 100),

              // Add Location
              const ListTile(
                title: Text('+ Add Location', style: TextStyle(color: Colors.green, fontSize: 16)),
              ),

              // Urgency checkbox
              CheckboxListTile(
                value: _isUrgent,
                onChanged: (val) {
                  setState(() {
                    _isUrgent = val ?? false;
                  });
                },
                title: const Text('Mark Urgency', style: TextStyle(color: Colors.green, fontSize: 16)),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.green,
              ),

              // Dropdown-like options
              const ListTile(
                title: Text('Select Region', style: TextStyle(color: Colors.green, fontSize: 16)),
                trailing: Icon(Icons.arrow_drop_down, color: Colors.green),
              ),
              const ListTile(
                title: Text('Select Category', style: TextStyle(color: Colors.green, fontSize: 16)),
                trailing: Icon(Icons.arrow_drop_down, color: Colors.green),
              ),
              const SizedBox(height: 20),

              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(foregroundColor: Colors.green),
                    child: const Text('Save'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context); // Replace with real submit
                    },
                    style: OutlinedButton.styleFrom(foregroundColor: Colors.green),
                    child: const Text('Submit'),
                  ),
                  OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    style: OutlinedButton.styleFrom(foregroundColor: Colors.green),
                    child: const Text('Cancel'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // ✅ Bottom Nav stays visible
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.description), label: 'My Reports'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Employment'),
          BottomNavigationBarItem(icon: Icon(Icons.leaderboard), label: 'Leader Board'),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamedAndRemoveUntil(context, '/user_home', (route) => false);
          }
        },
      ),
    );
  }
}
