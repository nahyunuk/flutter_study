import 'package:flutter/material.dart';

class Showimage extends StatelessWidget {
  Showimage({super.key});

  String Url =
      'https://cdn.pixabay.com/photo/2016/12/15/20/21/texture-1909992_1280.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test title"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image(
          image: NetworkImage(Url),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
