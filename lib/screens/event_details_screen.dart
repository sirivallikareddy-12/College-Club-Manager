import 'package:flutter/material.dart';

class EventDetailsScreen extends StatefulWidget {
  final String eventName;
  final String date;
  final String time;
  final String location;
  final String description;
  final IconData icon;

  const EventDetailsScreen({
    super.key,
    required this.eventName,
    required this.date,
    required this.time,
    required this.location,
    required this.description,
    required this.icon,
  });

  @override
  State<EventDetailsScreen> createState() => _EventDetailsScreenState();
}

class _EventDetailsScreenState extends State<EventDetailsScreen> {
  bool isRegistered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.eventName)),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Event Icon
            Center(
              child: CircleAvatar(
                radius: 50,
                child: Icon(widget.icon, size: 50),
              ),
            ),

            const SizedBox(height: 20),

            // Event Name
            Center(
              child: Text(
                widget.eventName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Date
            Row(
              children: [
                const Icon(Icons.calendar_month),

                const SizedBox(width: 12),

                Text(widget.date, style: const TextStyle(fontSize: 16)),
              ],
            ),

            const SizedBox(height: 15),

            // Time
            Row(
              children: [
                const Icon(Icons.access_time),

                const SizedBox(width: 12),

                Text(widget.time, style: const TextStyle(fontSize: 16)),
              ],
            ),

            const SizedBox(height: 15),

            // Location
            Row(
              children: [
                const Icon(Icons.location_on),

                const SizedBox(width: 12),

                Expanded(
                  child: Text(
                    widget.location,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // About Event
            const Text(
              'About Event',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Text(
              widget.description,
              style: const TextStyle(fontSize: 16, height: 1.5),
            ),

            const SizedBox(height: 35),

            // Register Button
            SizedBox(
              width: double.infinity,
              height: 50,

              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isRegistered = !isRegistered;
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        isRegistered
                            ? 'You registered for ${widget.eventName}!'
                            : 'Registration cancelled.',
                      ),
                    ),
                  );
                },

                child: Text(
                  isRegistered ? 'REGISTERED ✓' : 'REGISTER FOR EVENT',
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
