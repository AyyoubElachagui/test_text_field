
import 'package:flutter/material.dart';
import 'package:test_text_field/src/first_test/first.dart';
import 'package:test_text_field/src/four_test/four_test.dart';
import 'package:test_text_field/src/second_test/second.dart';
import 'package:test_text_field/src/threed_test/three_test.dart';

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
                  MaterialPageRoute(builder: (context) => FirstTest()),
                );
              },
              child: Text("first test"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondTest()),
                );
              },
              child: Text("Second test"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TestThree()),
                );
              },
              child: Text("Three test"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HtmlEditorExample()),
                );
              },
              child: Text("Four test"),
            )
          ],
        ),
      ),
    );
  }
}
