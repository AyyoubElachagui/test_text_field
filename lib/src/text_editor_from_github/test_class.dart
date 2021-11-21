import 'package:flutter/material.dart';
import 'package:html_editor_enhanced/html_editor.dart';

class TestClass extends StatefulWidget {
  @override
  _TestClassState createState() => _TestClassState();
}

class _TestClassState extends State<TestClass> {

  HtmlEditorController controller = HtmlEditorController();
  HtmlToolbarOptions htmlToolbarOptions = HtmlToolbarOptions();
  Callbacks callbacks = Callbacks();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            child: ToolbarWidget(controller: controller, callbacks: callbacks, htmlToolbarOptions: htmlToolbarOptions),
          ),
        )
    );
  }
}
