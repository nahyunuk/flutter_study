import 'dart:ui';

import 'package:flutter/material.dart';
// List 선언
final postList = [
  {
    "title": "Sample title 1",
    "color": Colors.green,
  },
  {
    "title" : "Sample title 2",
    "color" : Colors.redAccent,
  },
  {
    "title" : "Sample title 3",
    "color" : Colors.amber,
  },
  {
    "title" : "Sample title 4",
    "color" : Colors.purpleAccent,
  },
  {
    "title" : "Sample title 5",
    "color" : Colors.teal,
  },
  {
    "title" : "Sample title 6",
    "color" : Colors.blueAccent,
  },
];

class Listview2 extends StatefulWidget {
    Listview2({super.key});

  @override
  State<Listview2> createState() => _Listview2State();
}

class _Listview2State extends State<Listview2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Title"),
      ),

        body: ListView.builder(
          // ListView.builder는 동적으로 리스트를 생성하는 위젯
          itemCount: postList.length, // postList의 길이에 따라 아이템 수를 설정
          itemBuilder: (BuildContext con, int index) {

            return postContainer(
              // postContainer 위젯을 호출하여 각 게시물의 제목과 색상을 전달
              title: postList[index]["title"] as String, // 게시물 제목을 문자열로 가져옴
              colorData: postList[index]["color"] as Color, // 게시물 색상을 Color 타입으로 가져옴
            );
          },
        )
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
