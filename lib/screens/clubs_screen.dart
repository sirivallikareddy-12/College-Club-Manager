import 'package:flutter/material.dart';
import 'club_details_screen.dart';

class ClubsScreen extends StatelessWidget {
  const ClubsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('College Clubs')),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Coding Club
          Card(
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.code)),
              title: const Text(
                'Coding Club',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('Programming & Technology\n85 Members'),
              isThreeLine: true,
              trailing: const Icon(Icons.arrow_forward_ios, size: 18),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => const ClubDetailsScreen(
                          clubName: 'Coding Club',
                          category: 'Programming & Technology',
                          description:
                              'A community for students interested in programming, DSA and software development.',
                          members: 85,
                          icon: Icons.code,
                        ),
                  ),
                );
              },
            ),
          ),

          // Robotics Club
          Card(
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.smart_toy)),
              title: const Text(
                'Robotics Club',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('Robotics & IoT\n52 Members'),
              isThreeLine: true,
              trailing: const Icon(Icons.arrow_forward_ios, size: 18),
              onTap: () {},
            ),
          ),

          // Photography Club
          Card(
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.camera_alt)),
              title: const Text(
                'Photography Club',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('Photography & Media\n40 Members'),
              isThreeLine: true,
              trailing: const Icon(Icons.arrow_forward_ios, size: 18),
              onTap: () {},
            ),
          ),

          // Arts Club
          Card(
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.palette)),
              title: const Text(
                'Arts Club',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('Art & Creativity\n35 Members'),
              isThreeLine: true,
              trailing: const Icon(Icons.arrow_forward_ios, size: 18),
              onTap: () {},
            ),
          ),

          // Sports Club
          Card(
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.sports)),
              title: const Text(
                'Sports Club',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('Sports & Fitness\n60 Members'),
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
