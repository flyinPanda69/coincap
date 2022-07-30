import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Map rates;

  const DetailsPage({required this.rates});
  @override
  Widget build(BuildContext context) {
    List _currencies = rates.keys.toList();
    List _excahangeRates = rates.values.toList();
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: _currencies.length,
          itemBuilder: (_context, _index) {
            String _currency = _currencies[_index].toString().toUpperCase();
            String _exchangeRate =
                _excahangeRates[_index].toString().toUpperCase();
            return ListTile(
              title: Text(
                "$_currency : $_exchangeRate",
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
