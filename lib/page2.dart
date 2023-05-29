import 'package:flutter/material.dart';
import 'page3.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page2"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
          onPressed:() => {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return Page3();
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