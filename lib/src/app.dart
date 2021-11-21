
import 'package:flutter/material.dart';
import 'package:test_text_field/src/_1/_1.dart';
import 'package:test_text_field/src/_2/_2.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Second()),
                );
              },
              child: Text("popUp Menu"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => First()),
                );
              },
              child: Text("Text Style"),
            ),
          ],
        ),
      ),
    );
  }
}
