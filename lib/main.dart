import 'package:chapter1/page1.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';

// 1.エントリーポイントのmain関数
void main() {
  // 2.MyAppを呼び出す
  runApp(const MyApp());
}

// MyAppのクラス
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 3. タイトルとテーマを設定する。画面の本体はMyHomePageで作る。
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        "/page1": (BuildContext context) => Page1(),
        "/page2": (BuildContext context) => Page2(),
        "/page3": (BuildContext context) => Page3(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // 5. カウンタが押された時のメソッド
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // 4. MyHomePageの画面を構築する部分
    return Scaffold(
      appBar: AppBar(
        title: Row(children: const [
          Icon(Icons.create),
          Text("初めてのタイトル"),
        ]),
      ),
      body:Column(children: [
        Text(
          '$_counter',
          style: Theme.of(context).textTheme.headline4,
        ),
        if (_counter % 2 == 0)
          const Text('偶数なので表示', style: TextStyle(fontSize: 20, color: Colors.red)),
        Icon(FontAwesomeIcons.gift, color: Colors.teal),
        TextButton(
          onPressed:() => {
            Navigator.of(context).pushNamed("/page1")
          },
          child: const Text("進む", style: TextStyle(fontSize: 80)),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 24.0,
              ),
              Icon(
                Icons.audiotrack,
                color: Colors.green,
                size: 30.0,
              ),
              Icon(
                Icons.beach_access,
                color: Colors.blue,
                size: 36.0,
              ),
            ]
          )
      ]), 
      // 右下の「＋」ボタンに対応するフローティングアクションボタン
      floatingActionButton: FloatingActionButton(
        onPressed: () => {_incrementCounter()},
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      drawer: const Drawer(
        child: Center(child: Text("Drawer")),
      ),
      endDrawer: const Drawer(
        child: Center(child: Text("EndDrawer")),
      ),
    );
  }
}
