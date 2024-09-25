import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test title'),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              //기본 배경색이 적용되는 버튼
              child: ElevatedButton(
                onPressed: ()=>{print("Elevated Button")},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
                child: Text("Elevated Button"),
              ),
            ),
            Center(
              //Text를 버튼처럼 누를 수 있게 만드는 것
              child: TextButton(
                onPressed: ()=>{print("Text Button")},
                child: Text("Text Button"),
              ),
            ),
            Center(
              //외각선이 있는 버튼
              child: OutlinedButton(
                onPressed: ()=>{print("Outlined Button")},
                child: Text("Outlined Button"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
