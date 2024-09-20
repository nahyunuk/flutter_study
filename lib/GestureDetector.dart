import 'package:flutter/material.dart';
class Gesturedetector extends StatefulWidget {
  const Gesturedetector({super.key});

  @override
  State<Gesturedetector> createState() => _GesturedetectorState();
}

class _GesturedetectorState extends State<Gesturedetector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Title"),
      ),
      body: Center(
        child: GestureDetector(
          // 눌렀을때 실행
          onTap: () => print("GestureDetector used!"),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
