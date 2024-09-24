import 'package:flutter/material.dart';

class Scroll extends StatelessWidget {
  const Scroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test title"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: SingleChildScrollView(
              child: Column(
                children: [ Container(width: MediaQuery.of(context).size.width,
                  height: 300,
                  color: Colors.greenAccent,
                ),
                  Container(width: MediaQuery.of(context).size.width,
                    height: 300,
                    color: Colors.redAccent,
                  ), ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: SingleChildScrollView(
              child: Column(
                children: [ Container(width: MediaQuery.of(context).size.width,
                  height: 300,
                  color: Colors.yellowAccent,
                ),
                  Container(width: MediaQuery.of(context).size.width,
                    height: 300,
                    color: Colors.blueAccent,
                  ), ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: SingleChildScrollView(
              child: Column(
                children: [ Container(width: MediaQuery.of(context).size.width,
                  height: 300,
                  color: Colors.orangeAccent,
                ),
                  Container(width: MediaQuery.of(context).size.width,
                    height: 300,
                    color: Colors.purpleAccent,
                  ), ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
