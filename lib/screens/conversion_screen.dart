import 'package:flutter/material.dart';
import 'package:reil_money_v1/widgets/currency_card_widget.dart';

class ConversionScreen extends StatelessWidget {
  const ConversionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 94, 160, 96),
            Color.fromARGB(255, 217, 223, 218),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CurrencyCard(
              countryName: 'cambodia',
              countryCode: 'kh',
            ),
            const SizedBox(
              height: 20,
            ),
            const CurrencyCard(
              countryName: 'usa',
              countryCode: 'us',
            ),
            const SizedBox(
              height: 20,
            ),
            const CurrencyCard(
              // TODO how to make this card a user defined country
              countryName: 'australia',
              countryCode: 'au',
            ),
            const SizedBox(
              height: 40,
            ),
            const Text('inAppAdvertContainer'),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('reset'),
            ),
          ],
        ),
      ),
    );
  }
}
