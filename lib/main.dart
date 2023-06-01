import 'package:flutter/material.dart';

import 'package:reil_money_v1/screens/conversion_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: ConversionScreen(),
      ),
    );
  }
}
