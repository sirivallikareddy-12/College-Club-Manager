import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Profile')),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            // Profile Picture
            const CircleAvatar(radius: 55, child: Icon(Icons.person, size: 60)),

            const SizedBox(height: 15),

            // Name
            const Text(
              'Student Name',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 5),

            const Text(
              'Computer Science & Engineering',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),

            const SizedBox(height: 5),

            const Text(
              '3rd Year',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),

            const SizedBox(height: 30),

            // Email
            Card(
              child: ListTile(
                leading: const Icon(Icons.email),
                title: const Text('Email'),
                subtitle: const Text('student@example.com'),
              ),
            ),

            const SizedBox(height: 10),

            // Department
            Card(
              child: ListTile(
                leading: const Icon(Icons.school),
                title: const Text('Department'),
                subtitle: const Text('Computer Science & Engineering'),
              ),
            ),

            const SizedBox(height: 20),

            // Statistics
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: const [
                          Icon(Icons.groups, size: 35),
                          SizedBox(height: 8),
                          Text(
                            '3',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('My Clubs'),
                        ],
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: const [
                          Icon(Icons.event, size: 35),
                          SizedBox(height: 8),
                          Text(
                            '5',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Events'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Edit Profile
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.edit),
                label: const Text('Edit Profile'),
              ),
            ),

            const SizedBox(height: 10),

            // Logout
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.logout),
                label: const Text('Logout'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
