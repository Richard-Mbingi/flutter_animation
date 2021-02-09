import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Animation Implementations",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Method 1"),
            color: Colors.red,
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Method 2"),
            color: Colors.blue,
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Method 3"),
            color: Colors.green,
          ),
        ],
      ),
    ));
  }
}
