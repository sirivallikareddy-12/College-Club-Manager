import 'package:flutter/material.dart';

class MyClubsScreen extends StatelessWidget {
  const MyClubsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Clubs')),

      body: ListView(
        padding: const EdgeInsets.all(16),

        children: [
          Card(
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.code)),

              title: const Text(
                'Coding Club',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              subtitle: const Text('Programming & Technology'),

              trailing: const Icon(Icons.check_circle),
            ),
          ),

          Card(
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.smart_toy)),

              title: const Text(
                'Robotics Club',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              subtitle: const Text('Robotics & IoT'),

              trailing: const Icon(Icons.check_circle),
            ),
          ),
        ],
      ),
    );
  }
}
