import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('College Club Manager'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome message
            const Text(
              'Hello, Student 👋',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 5),

            const Text(
              'Discover clubs and upcoming events',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const SizedBox(height: 25),

            // Search
            TextField(
              decoration: InputDecoration(
                hintText: 'Search clubs...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 25),

            // Statistics
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(18),

                      child: Column(
                        children: const [
                          Icon(Icons.groups, size: 35),

                          SizedBox(height: 8),

                          Text(
                            '5',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text('Available Clubs'),
                        ],
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(18),

                      child: Column(
                        children: const [
                          Icon(Icons.favorite, size: 35),

                          SizedBox(height: 8),

                          Text(
                            '2',
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
              ],
            ),

            const SizedBox(height: 25),

            // Upcoming Events
            const Text(
              'Upcoming Events',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Card(
              child: ListTile(
                leading: const CircleAvatar(child: Icon(Icons.code)),

                title: const Text(
                  'Coding Contest',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                subtitle: const Text('25 September • 10:00 AM\nSeminar Hall'),

                isThreeLine: true,

                trailing: const Icon(Icons.arrow_forward_ios, size: 18),
              ),
            ),

            const SizedBox(height: 25),

            // Featured Clubs
            const Text(
              'Featured Clubs',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Card(
              child: ListTile(
                leading: const CircleAvatar(child: Icon(Icons.code)),

                title: const Text(
                  'Coding Club',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                subtitle: const Text('Programming & Technology'),

                trailing: const Icon(Icons.arrow_forward_ios, size: 18),
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

                trailing: const Icon(Icons.arrow_forward_ios, size: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
