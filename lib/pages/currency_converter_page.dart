import 'package:flutter/material.dart';

// Private
class _CurrencyConverterState extends State<CurrencyConverterPage> {
  double result = 0;

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();

    void convert() {
      setState(() {
        result = double.parse(textEditingController.text) * 277.60;
      });
    }

    @override
    void dispose() {
      textEditingController.dispose();
      print("dispose called");
      super.dispose();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            "USD to PKR",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Rs ${result.toStringAsFixed(2)}',
              style: const TextStyle(
                  fontSize: 30,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  decoration: const InputDecoration(
                    hintText: "Enter amonunt in USD",
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(style: BorderStyle.none),
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.circular(30)),
                    ),
                  ),
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: convert,
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                  textStyle: const TextStyle(color: Colors.white),
                  fixedSize: const Size(double.infinity, 30),
                ),
                child: const Text("Convert into PKR"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Public
class CurrencyConverterPage extends StatefulWidget {
  const CurrencyConverterPage({super.key});

  @override
  State<CurrencyConverterPage> createState() {
    return _CurrencyConverterState();
  }
}
