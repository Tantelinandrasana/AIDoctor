import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const AIDoctorApp());
}

class AIDoctorApp extends StatelessWidget {
  const AIDoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AIDoctor',
      theme: ThemeData(primarySwatch: Colors.teal, useMaterial3: true),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
