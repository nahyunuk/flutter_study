import 'package:flutter/material.dart';

class Gridveiw extends StatelessWidget {
  const Gridveiw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test title"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0, //열 사이의 공간
          mainAxisSpacing: 12.0,
        ),
        children: [
          postContainer(number: "1",colorData: Colors.amber),
          postContainer(number: "2", colorData: Colors.greenAccent),
          postContainer(number: "3", colorData: Colors.redAccent),
          postContainer(number: "4", colorData: Colors.amberAccent),
          postContainer(number: "5",colorData: Colors.amber),
          postContainer(number: "6", colorData: Colors.greenAccent),
          postContainer(number: "7", colorData: Colors.redAccent),
          postContainer(number: "8", colorData: Colors.amberAccent),
          postContainer(number: "9",colorData: Colors.amber),
          postContainer(number: "10", colorData: Colors.greenAccent),
          postContainer(number: "11", colorData: Colors.redAccent),
          postContainer(number: "12", colorData: Colors.amberAccent),
        ],
      ),
    );
  }

  Widget postContainer({String number = "0", Color colorData = Colors.amber}) {
    return Container(
      height: 200,
      color: colorData,
      child: Center(child: Text("Box $number")),
    );
  }
}
