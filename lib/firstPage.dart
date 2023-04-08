import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  static final String id = "first_page";

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Ikkinchi sahifa!!!"),
      ),
    );
  }
}
