import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // ho an'ny JSON handling

class SymptomCheckerScreen extends StatefulWidget {
  const SymptomCheckerScreen({super.key});

  @override
  State<SymptomCheckerScreen> createState() => _SymptomCheckerScreenState();
}

class _SymptomCheckerScreenState extends State<SymptomCheckerScreen> {
  final TextEditingController symptomController = TextEditingController();
  String responseMessage = "";
  bool isLoading = false;

  Future<void> checkSymptoms(String symptoms) async {
    setState(() {
      isLoading = true;
      responseMessage = "Consultation en cours...";
    });

    final apiKey = 'your-openai-api-key'; // Ataovy amin'ny API key anao
    final url = Uri.parse('https://api.openai.com/v1/completions');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $apiKey',
    };

    final body = json.encode({
      'model': 'gpt-3.5-turbo',
      'messages': [
        {
          'role': 'system',
          'content':
              'Vous êtes un assistant médical qui aide à diagnostiquer les symptômes.',
        },
        {'role': 'user', 'content': symptoms},
      ],
    });

    try {
      final response = await http.post(url, headers: headers, body: body);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          responseMessage = data['choices'][0]['message']['content'];
        });
      } else {
        setState(() {
          responseMessage = "Erreur lors de la consultation. Essayez encore.";
        });
      }
    } catch (e) {
      setState(() {
        responseMessage = "Erreur: $e";
      });
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Symptom Checker")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: symptomController,
              decoration: const InputDecoration(
                labelText: 'Décrivez vos symptômes',
                border: OutlineInputBorder(),
              ),
              maxLines: 4,
            ),
            const SizedBox(height: 16),
            isLoading
                ? const Center(child: CircularProgressIndicator())
                : ElevatedButton(
                  onPressed: () {
                    if (symptomController.text.isNotEmpty) {
                      checkSymptoms(symptomController.text);
                    }
                  },
                  child: const Text("Consulter"),
                ),
            const SizedBox(height: 16),
            Text(responseMessage, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
