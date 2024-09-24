import 'package:flutter/material.dart';

class MyAlign extends StatelessWidget {
  const MyAlign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test title"),
      ),
      body: Container(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
