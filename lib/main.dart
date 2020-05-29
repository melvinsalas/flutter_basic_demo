import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  void onIncrease() => this.setState(() => _counter++);

  void onDecrease() => this.setState(() => _counter--);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Ejemplo')),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildCounter(),
          _buildButtons(),
        ],
      ),
    );
  }

  Widget _buildCounter() {
    return Text(
      _counter.toString(),
      style: TextStyle(fontSize: 58),
    );
  }

  Widget _buildButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () => onIncrease(),
          child: Icon(Icons.add),
        ),
        FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () => onDecrease(),
          child: Icon(Icons.exposure_neg_1),
        ),
      ],
    );
  }
}
