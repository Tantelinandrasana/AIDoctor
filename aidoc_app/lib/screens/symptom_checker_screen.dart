import 'package:flutter/material.dart';

class SymptomCheckerScreen extends StatefulWidget {
  const SymptomCheckerScreen({super.key});

  @override
  State<SymptomCheckerScreen> createState() => _SymptomCheckerScreenState();
}

class _SymptomCheckerScreenState extends State<SymptomCheckerScreen> {
  final TextEditingController _symptomController = TextEditingController();
  String? _result;

  void checkSymptom() {
    String symptom = _symptomController.text.toLowerCase();

    // Mock logic — afaka soloina AI any aoriana
    if (symptom.contains('tazo') || symptom.contains('fiakaran\'ny maripana')) {
      _result =
          'Mety manana tazo ianao. Mety ho famantarana ny aretina toy ny gripa na virosy.';
    } else if (symptom.contains('kibo') || symptom.contains('manavy')) {
      _result = 'Azo heverina ho aretin-kibo na aretina manan-dra izany.';
    } else {
      _result = 'Tsy azoko antoka. Raha maharitra dia tsara manatona dokotera.';
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fanombanana Soritr’aretina')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _symptomController,
              decoration: const InputDecoration(
                labelText: 'Soraty eto ny soritr’aretina',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: checkSymptom,
              icon: const Icon(Icons.search),
              label: const Text('Jereo'),
            ),
            const SizedBox(height: 20),
            if (_result != null)
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(_result!, style: const TextStyle(fontSize: 16)),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
