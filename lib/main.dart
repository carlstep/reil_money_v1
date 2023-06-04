import 'package:flutter/material.dart';

import 'package:reil_money_v1/screens/conversion_screen.dart';
import 'package:reil_money_v1/screens/transactions_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: TransactionsScreen(
      //   screenName: 'Transactions',
      //   color1: Color.fromARGB(255, 99, 99, 97),
      //   color2: Color.fromARGB(255, 48, 48, 47),
      // ),
      //TODO - how to setup switching screens
      home: ConversionScreen(
        screenName: 'Currency Conversion',
        color1: Color.fromARGB(255, 94, 160, 96),
        color2: Color.fromARGB(255, 217, 223, 218),
      ),
    );
  }
}
