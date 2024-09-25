import 'package:flutter/material.dart';

class MyGradient extends StatelessWidget {
  const MyGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test title"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          // 가운데에서 부터 그라데이션
          gradient: RadialGradient(
              colors: [
                Colors.blue[100] as Color,
                Colors.blue[300] as Color,
                Colors.blue[500] as Color,
              ],
              center: Alignment.center,
              stops: [0.1, 0.4, 0.7]
          ),
          // 위에서 아래로 그라데이션
          /*gradient: LinearGradient(
              colors: [
                Colors.blue[100] as Color,
                Colors.blue[300] as Color,
                Colors.blue[500] as Color,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.2, 0.7]),*/
        ),
      ),
    );
  }
}
