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
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      decoration: BoxDecoration(
        color: const Color.fromARGB(131, 60, 83, 46),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          // TODO - create a stack to style the currency card
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      'assets/images/$countryCode.png',
                      // TODO - how to better fit/align the flag to the circularAvatar
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    countryName,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('currencyName'),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(250, 234, 239, 234),
                        // border: OutlineInputBorder(),
                        labelText: 'Enter Amount',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
