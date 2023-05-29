import 'package:flutter/material.dart';
import 'page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page1"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
          onPressed:() => {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return Page2();
            }))
          },
          child: const Text("進む", style: TextStyle(fontSize: 80)),
        ),
        TextButton(
          onPressed:() => {
            Navigator.of(context).pop()
          },
          child: const Text("戻る", style: TextStyle(fontSize: 80)),
        ),
        ],)
      )
    );
  }
}