import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  const CurrencyCard({
    super.key,
    required this.countryName,
    required this.countryCode,
  });

  final String countryName;
  final String countryCode;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 150,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 30,
            child: Card(
              elevation: 8,
              child: Container(
                width: 260,
                height: 60,
                child: const Center(
                  child: Text(
                    'display field',
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 0,
            child: GestureDetector(
              onTap: () {},
              child: const CircleAvatar(
                child: Text('country flag'),
                radius: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
