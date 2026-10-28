import 'package:flutter/material.dart';

class ClubDetailsScreen extends StatefulWidget {
  final String clubName;
  final String category;
  final String description;
  final int members;
  final IconData icon;

  const ClubDetailsScreen({
    super.key,
    required this.clubName,
    required this.category,
    required this.description,
    required this.members,
    required this.icon,
  });

  @override
  State<ClubDetailsScreen> createState() => _ClubDetailsScreenState();
}

class _ClubDetailsScreenState extends State<ClubDetailsScreen> {
  bool isJoined = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.clubName)),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Club Icon
            Center(
              child: CircleAvatar(
                radius: 50,
                child: Icon(widget.icon, size: 50),
              ),
            ),

            const SizedBox(height: 20),

            // Club Name
            Center(
              child: Text(
                widget.clubName,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 8),

            // Category
            Center(
              child: Text(
                widget.category,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),

            const SizedBox(height: 30),

            // About
            const Text(
              'About',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Text(
              widget.description,
              style: const TextStyle(fontSize: 16, height: 1.5),
            ),

            const SizedBox(height: 25),

            // Members
            Row(
              children: [
                const Icon(Icons.people),

                const SizedBox(width: 10),

                Text(
                  '${widget.members} Members',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Upcoming Events
            const Text(
              'Upcoming Events',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Card(
              child: ListTile(
                leading: const Icon(Icons.event),
                title: const Text('Coding Contest'),
                subtitle: const Text('25 September • Seminar Hall'),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.event),
                title: const Text('Git & GitHub Workshop'),
                subtitle: const Text('30 September • Lab 3'),
              ),
            ),

            const SizedBox(height: 30),

            // Join Club Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isJoined = !isJoined;
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        isJoined
                            ? 'You joined ${widget.clubName}!'
                            : 'You left ${widget.clubName}.',
                      ),
                    ),
                  );
                },

                child: Text(
                  isJoined ? 'JOINED ✓' : 'JOIN CLUB',
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
