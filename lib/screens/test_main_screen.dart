import 'package:flutter/material.dart';

class TestMainScreen extends StatelessWidget {

  Widget buildButton(String title, String routeName, BuildContext ctx) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        onPressed: () {
          Navigator.of(ctx).pushNamed(routeName);
        },
        child: Text(title),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Testing")),
      body: Column(
        children: [
          buildButton("Animation", "/animation", context)
          ,
        ],
      ),
    );
  }
}
