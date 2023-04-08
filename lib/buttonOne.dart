import 'package:flutter/material.dart';
import 'package:mydemo4/firstPage.dart';

class DetailPage extends StatefulWidget {
  static final String id = "detail_page";

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blue)
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, FirstPage.id);
          },
          child: Text('ButtonTwo'),
        ),
      ),
    );
  }
}
