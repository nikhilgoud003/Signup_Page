import 'package:flutter/material.dart';

class ConfirmationPage extends StatelessWidget {
  final String name;
  final String email;
  final String dob;

  const ConfirmationPage({
    super.key,
    required this.name,
    required this.email,
    required this.dob,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Confirmation Page')),
      body: Container(
        color: Colors.blueGrey[50], // Background color added
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Signup Successful!',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            const SizedBox(height: 20),
            Text('👤 Name: $name', style: const TextStyle(fontSize: 18)),
            Text('📧 Email: $email', style: const TextStyle(fontSize: 18)),
            Text('📅 Date of Birth: $dob',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back to Signup'),
            ),
          ],
        ),
      ),
    );
  }
}
