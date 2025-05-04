import 'package:aidoc_app/screens/articles_screen.dart';
import 'package:flutter/material.dart';
import 'symptom_checker_screen.dart';
import 'chat_assistant_screen.dart';

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
            Image.asset('assets/doctor.png', height: 150),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.medical_services),
              label: const Text('Fanombanana Soritr\'aretina'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SymptomCheckerScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.chat),
              label: const Text('AI Assistant'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ChatAssistantScreen(),
                  ),
                );
              },
            ),
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
          ],
        ),
      ),
    );
  }
}
