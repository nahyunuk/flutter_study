import 'package:flutter/material.dart';
import 'package:day_1/SecoundPage.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
        child: GestureDetector(
          onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (_) => Secoundpage())),
          child: Container(
            child: Text("Go to secound page"),
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
