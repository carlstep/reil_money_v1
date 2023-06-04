// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:reil_money_v1/widgets/currency_card_widget.dart';

class ConversionScreen extends StatelessWidget {
  const ConversionScreen({
    Key? key,
    required this.screenName,
    required this.color1,
    required this.color2,
  }) : super(key: key);

  final String screenName;
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          screenName,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color1,
              color2,
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
      ),
    );
  }
}
