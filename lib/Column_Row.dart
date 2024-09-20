import 'package:flutter/material.dart';

class ColumnRow extends StatefulWidget {
  const ColumnRow({super.key});

  @override
  State<ColumnRow> createState() => _ColumnRowState();
}

class _ColumnRowState extends State<ColumnRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Title"),
      ),
      body: Container(
        alignment: Alignment.topLeft,

        // column 예시
        /* child: Column(
        *   children: [
        *     Container(
        *       width: 200,
        *       height:200,
        *       color: Colors.blue,
        *     ),
        *     Container(
        *       width: 200,
        *       height:200,
        *       color: Colors.red,
        *     ),
        *   ],
        ),*/
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  //현재 화면 너비의 절반을 사용하여 위젯의 너비를 설정
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                  color: Colors.blue,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                  color: Colors.red,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                  color: Colors.green,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                  color: Colors.purple,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
