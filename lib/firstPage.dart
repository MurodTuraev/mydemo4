import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  static final String id = "first_page";

  // final String name;
  // final int age;
  // FirstPage(this.name,this.age);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // get name => widget.name;
  // get age => widget.age;

  String name = 'Dart';
  int age = 33;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue)
          ),
          onPressed: () {
            // Navigator.pushReplacementNamed(context, FirstPage.id);
            Navigator.of(context).pop({'name':name, 'age':age});
          },
          child: Text('back'),
        ),
      ),
    );
  }
}
