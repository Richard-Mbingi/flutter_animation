import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logo_animation/routes.dart';

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
          SizedBox(height: 30.0),
          FlatButton(
            onPressed: () => methodOneRoute,
            child: Text("Method 1"),
            color: Colors.red,
          ),
          FlatButton(
            onPressed: () => methodTwoRoute,
            child: Text("Method 2"),
            color: Colors.blue,
          ),
          FlatButton(
            onPressed: () => methodThreeRoute,
            child: Text("Method 3"),
            color: Colors.green,
          ),
        ],
      ),
    ));
  }
}
