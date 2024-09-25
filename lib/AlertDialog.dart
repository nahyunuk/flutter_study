import 'package:flutter/material.dart';

class Alertdialog extends StatelessWidget {
  const Alertdialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test title"),
      ),
      body: Container(
        child: Center(
          child: TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext con) {
                  return AlertDialog(
                    title: const Text("Dialog Title"),
                    content: Container(
                      child:
                          SingleChildScrollView(child: Text("Dialog content")),
                    ),
                    actions: [
                      TextButton(onPressed: () {}, child: Text("Yes")),
                      TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text("Close"))
                    ],
                  );
                },
              );
            },
            child: Text("Button"),
          ),
        ),
      ),
    );
  }
}
