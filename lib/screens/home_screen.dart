import 'package:aidoc_app/screens/about_page.dart';
import 'package:aidoc_app/screens/articles_screen.dart';
import 'package:flutter/material.dart';
import 'symptom_checker_screen.dart'; // Import ho an'ny Symptom Checker
import 'chat_assistant_screen.dart'; // Import ho an'ny Chat Assistant

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AIDoctor'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Sary sy fanampiny
            Image.asset('assets/doctor.png', height: 150),
            const SizedBox(height: 20),

            // Symptom Checker Button
            ElevatedButton.icon(
              icon: const Icon(Icons.medical_services),
              label: const Text('Fanombanana Soritr\'aretina'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (_) =>
                            const SymptomCheckerScreen(), // Mankany amin'ny Symptom Checker
                  ),
                );
              },
            ),
            const SizedBox(height: 20),

            // AI Assistant Button
            ElevatedButton.icon(
              icon: const Icon(Icons.chat),
              label: const Text('AI Assistant'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (_) =>
                            const ChatAssistantScreen(), // Mankany amin'ny Chat Assistant
                  ),
                );
              },
            ),
            const SizedBox(height: 20),

            // Torohevitra Ara-pahasalamana Button
            ElevatedButton.icon(
              icon: const Icon(Icons.article),
              label: const Text('Torohevitra Ara-pahasalamana'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ArticlesScreen()),
                );
              },
            ),
            const SizedBox(height: 20),

            // About Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              },
              child: const Text('About AIDoctor'),
            ),
          ],
        ),
      ),
    );
  }
}
