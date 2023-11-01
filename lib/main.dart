import 'package:flutter/material.dart';
import 'package:partyplanner/pages/details.dart';
import 'package:partyplanner/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Party Planner',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF000000),
          background: const Color(0xFF000000),
          primary: const Color(0xFF9bf306),
          secondary: const Color(0xFF3aef05),
          tertiary: const Color(0xFF3171ef),
          surfaceTint: const Color(0xFF49f0e3),
          inverseSurface: const Color(0xFF44f2b5),
          onSecondary: const Color(0xFFa7a0a0),
          primaryContainer: const Color(0xFF5f5d68),
          secondaryContainer: const Color(0xFF968f92),
          tertiaryContainer: const Color(0xFFD3CBC4),
          onPrimary: Colors.white,
          error: const Color(0xFF7A3232), // delete button
          surface: const Color(0xFFD8C5BB), // edit button
        ),
        useMaterial3: true,
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF000000),
          background: const Color(0xFFFFFFFF),
          primary: const Color(0xFF9bf306),
          secondary: const Color(0xFF3aef05),
          tertiary: const Color(0xFF3171ef),
          surfaceTint: const Color(0xFF49f0e3),
          inverseSurface: const Color(0xFF44f2b5),
          onSecondary: const Color(0xFFa7a0a0),
          tertiaryContainer: const Color(0xFF5f5d68),
          secondaryContainer: const Color(0xFFB3ACAE),
          primaryContainer: const Color(0xFF312F2D),
          onPrimary: Colors.black,
          error: const Color(0xFFCF4747), // delete button
          surface: const Color(0xFFF5DAD0), // edit button
          onSurface: Colors.white,
        ),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.dark,
      home: const Home(),
      routes: <String, WidgetBuilder>{
        '/home': (context) => const Home(),
        '/details': (context) => const Details(),
      },
    );
  }
}
