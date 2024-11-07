import 'package:flutter/material.dart';
import './pages/currency_converter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterPage(),
    );
  }
}
