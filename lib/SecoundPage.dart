import 'package:flutter/material.dart';

class Secoundpage extends StatelessWidget {
  const Secoundpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Secound Page"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: ()=> Navigator.of(context).pop(),
          child: Container(
            child: Text("Back"),
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
