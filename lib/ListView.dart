import 'dart:ui';

import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Title"),
      ),
      body: Center(
        child: ListView(
          // 가로 스크롤
          //scrollDirection: Axis.horizontal,
          //수직 스크롤
          scrollDirection: Axis.vertical,
          children: [
            postContainer(title: "Title 1",colorData: Colors.yellow),
            postContainer(title: "Title 2",colorData: Colors.red),
            postContainer(title: "Title 3",colorData: Colors.green),
            postContainer(title: "Title 4",colorData: Colors.amber),
            postContainer(title: "Title 5",colorData: Colors.indigo),
          ],
        ),
      ),
    );
  }
  Widget postContainer({String title = '',Color colorData = Colors.blue}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            title,
            style: TextStyle(
              //폰트 사이즈 설정
                fontSize: 16,
                //폰트 굵기 설정
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          color:colorData,
        ),
      ],
    );
  }
}
