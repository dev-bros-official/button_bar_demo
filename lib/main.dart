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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter(int amount) {
    setState(() {
      _counter += amount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonTheme(
              buttonColor: Colors.red,
              child: ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  //TODO: talk about how the buttons will convert from row to column if exceeds width
                  RaisedButton(
                    child: Text('1'),
                    onPressed: () {
                      _incrementCounter(1);
                    },
                  ),
                  RaisedButton(
                    child: Text('2'),
                    onPressed: () {
                      _incrementCounter(2);
                    },
                  ),
                  RaisedButton(
                    child: Text('3'),
                    onPressed: () {
                      _incrementCounter(3);
                    },
                  ),
                  RaisedButton(
                    child: Text('4'),
                    onPressed: () {
                      _incrementCounter(4);
                    },
                  ),
                ],
              ),
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _incrementCounter(1),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
