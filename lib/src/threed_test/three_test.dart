import 'package:flutter/material.dart';
import 'package:text_selection_controls/text_selection_controls.dart';

class TestThree extends StatefulWidget {
  @override
  _TestThreeState createState() => _TestThreeState();
}

class _TestThreeState extends State<TestThree> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: TextFormField(
            selectionControls:
            FlutterSelectionControls(toolBarItems: <ToolBarItem>[

              ToolBarItem(
                  item: Text(
                    'Bold',
                  ),
                  onItemPressed:
                      (String highlightedText, int startIndex, int endIndex) =>
                  {} // TODO:
              ),
              ToolBarItem(
                  item: Text(
                    'Italic',
                  ),
                  onItemPressed:
                      (String highlightedText, int startIndex, int endIndex) =>
                  {} // TODO:
              ),
              ToolBarItem(
                  item: Text(
                    'Strikethrough',
                  ),
                  onItemPressed:
                      (String highlightedText, int startIndex, int endIndex) =>
                  {} // TODO:
              ),
              ToolBarItem(
                  item: Text(
                    'Link',
                  ),
                  onItemPressed:
                      (String highlightedText, int startIndex, int endIndex) =>
                  {} // TODO:
              ),
            ]),
            decoration: InputDecoration(
              isDense: true,
              // border: UnderlineInputBorder(borderSide: BorderSide.none),
              // focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none)
            ),
            controller: _controller,
          ),
        ),
      ),
    );
  }
}
