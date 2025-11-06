import 'package:flutter/material.dart';
import './widgets/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const btnPadding = EdgeInsets.symmetric(vertical: 16);
    final btnShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    );

    return MaterialApp(
      title: 'Auth App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            disabledBackgroundColor: Colors.blue.shade200,
            padding: btnPadding,
            shape: btnShape,
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(padding: btnPadding, shape: btnShape),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.blue,
            padding: btnPadding,
            shape: btnShape,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey[200]
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
