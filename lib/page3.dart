import 'package:flutter/material.dart';
import 'page2.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page3"),
      ),
      body: Center(
        child: TextButton(
          onPressed:() => {
            Navigator.of(context).pop()
          },
          child: const Text("戻る", style: TextStyle(fontSize: 80)),
        ),
      )
    );
  }
}