import 'package:flutter/material.dart';

class MyStack extends StatefulWidget {
  MyStack({super.key});

  @override
  State<MyStack> createState() => _MyStackState();
}

class _MyStackState extends State<MyStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Title"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.yellow,
        child: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.only(top: 50,left: 50),
              color: Colors.blue,
            ),
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.only(top: 100,left: 100),
              color: Colors.green,
            ),
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.only(top: 150,left: 150),
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
