import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyAppState(title: 'Hello, World'),
    );
  }
}

class MyAppState extends StatefulWidget {
  final String title;
  MyAppState({Key key, this.title}) : super(key: key);

  @override
  _MyAppStateState createState() => _MyAppStateState();
}

class _MyAppStateState extends State<MyAppState> {
  int _num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter', style: TextStyle(fontSize: 30)),
            Text('$_num', style: TextStyle(fontSize: 30)),
            ElevatedButton(
                child: Text('화면 이동'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyAppState(title: '')));
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _clickedButton,
      ),
    );
  }

  void _clickedButton() {
    setState(() {
      _num++;
    });
  }
}
