
import 'package:flutter/material.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:html_editor_enhanced/utils/options.dart';
import 'package:test_text_field/src/customize_HtmlEditor/customize_HtmlEditor.dart';
import 'package:test_text_field/src/first_test/first.dart';
import 'package:test_text_field/src/four_test/four_test.dart';
import 'package:test_text_field/src/rich_editor/rich_editor.dart';
import 'package:test_text_field/src/second_test/second.dart';
import 'package:test_text_field/src/text_editor_from_github/test_class.dart';
import 'package:test_text_field/src/text_editor_from_github/text_editor_from_github.dart';
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
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              child: Text("Zefyr package"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HtmlEditorExample1()),
                );
              },
              child: Text("Customize HtmlEditor"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TestClass()),
                );
              },
              child: Text("text editor from github"),
            ),
          ],
        ),
      ),
    );
  }
}
