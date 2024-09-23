import 'package:flutter/material.dart';

class Gridveiw extends StatelessWidget {
  Gridveiw({super.key});

  final postList = [
    {
      "number": "0",
      "color": Colors.amber,
    },
    {
      "number": "1",
      "color": Colors.redAccent,
    },
    {
      "number": "2",
      "color": Colors.blueAccent,
    },
    {
      "number": "3",
      "color": Colors.deepOrange,
    },
    {
      "number": "4",
      "color": Colors.purpleAccent,
    },
    {
      "number": "5",
      "color": Colors.greenAccent,
    },
    {
      "number": "6",
      "color": Colors.lightBlue,
    },
    {
      "number": "7",
      "color": Colors.lime,
    },
    {
      "number": "8",
      "color": Colors.indigo,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test title"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 12.0,
          ),
          itemCount: postList.length,
          itemBuilder: (BuildContext con, int index) {
            return postContainer(
                number: postList[index]["number"] as String,
                colorData: postList[index]["color"] as Color);
          }),
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
