import 'package:flutter/material.dart';

class Drawar_FloatingActionButton extends StatefulWidget {
  @override
  State<Drawar_FloatingActionButton> createState() => _Drawar_FloatingActionButtonState();
}

class _Drawar_FloatingActionButtonState extends State<Drawar_FloatingActionButton> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Title"),
      ),
      drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text("Drawer Header Part"),
              ),
              ListTile(
                title: Text("Menu 1"),
              ),
            ],
          )),
      body: Container(
        child: Center(
          child: Text("COUNT NUMBER: $count"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => count++),
        tooltip: 'Test tooltip',
        child: Icon(Icons.mouse),
      ),
    );
  }
}