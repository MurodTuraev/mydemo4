import 'package:flutter/material.dart';
import 'package:mydemo4/firstPage.dart';

class DetailPage extends StatefulWidget {
  static final String id = "detail_page";

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String data = "Button";
  Future _openData() async{
    Map result = await Navigator.of(context).push(new MaterialPageRoute(
        builder: (BuildContext context){
          return new FirstPage();
        }));
    if (result!=null && result.containsKey('name') && result.containsKey('age')){
      setState(() {
        String name = result['name'];
        int age = result['age'];
        data = '$name $age';
      });
    }else{
      print('Nothing!!!');
    }
  }
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
            _openData();
          },
          child: Text(data),
        ),
      ),
    );
  }
}
