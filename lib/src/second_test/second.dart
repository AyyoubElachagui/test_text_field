import 'package:flutter/material.dart';
import 'package:text_selection_controls/text_selection_controls.dart';

class SecondTest extends StatefulWidget {
  @override
  _SecondTestState createState() => _SecondTestState();
}

class _SecondTestState extends State<SecondTest> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: TextFormField(
            maxLines: 8,
            autofocus: true,
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
              hintText: 'Search',
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
