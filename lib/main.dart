import 'package:flutter/material.dart';
import 'package:partyorganizer/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Party Organizer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF474553),
          primary: const Color(0xFF474553),
          onPrimary: Colors.white,
          secondary: const Color(0xFFc1b6b0),
          onSecondary: const Color(0xFFa7a0a0),
          tertiary: const Color(0xFFD3CBC4),
          onTertiary: const Color(0xFFFFFFFF),
          primaryContainer: const Color(0xFF5f5d68),
          secondaryContainer: const Color(0xFF968f92),
        ),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
