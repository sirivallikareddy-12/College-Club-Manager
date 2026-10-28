import 'package:flutter/material.dart';
import 'event_details_screen.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Upcoming Events')),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Event 1
          Card(
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.code)),

              title: const Text(
                'Coding Contest',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              subtitle: const Text('25 September\n10:00 AM • Seminar Hall'),

              isThreeLine: true,

              trailing: const Icon(Icons.arrow_forward_ios, size: 18),

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => const EventDetailsScreen(
                          eventName: 'Coding Contest',
                          date: '25 September',
                          time: '10:00 AM',
                          location: 'Seminar Hall',
                          description:
                              'A programming contest designed to test problem-solving, logical thinking and coding skills.',
                          icon: Icons.code,
                        ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 10),

          // Event 2
          Card(
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.web)),

              title: const Text(
                'Web Development Workshop',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              subtitle: const Text('30 September\n2:00 PM • Lab 3'),

              isThreeLine: true,

              trailing: const Icon(Icons.arrow_forward_ios, size: 18),

              onTap: () {},
            ),
          ),

          const SizedBox(height: 10),

          // Event 3
          Card(
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.smart_toy)),

              title: const Text(
                'Robotics Workshop',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              subtitle: const Text('5 October\n11:00 AM • Innovation Lab'),

              isThreeLine: true,

              trailing: const Icon(Icons.arrow_forward_ios, size: 18),

              onTap: () {},
            ),
          ),

          const SizedBox(height: 10),

          // Event 4
          Card(
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.camera_alt)),

              title: const Text(
                'Photography Walk',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              subtitle: const Text('10 October\n4:00 PM • College Campus'),

              isThreeLine: true,

              trailing: const Icon(Icons.arrow_forward_ios, size: 18),

              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
