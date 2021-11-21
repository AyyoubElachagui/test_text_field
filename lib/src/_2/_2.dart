import 'package:flutter/material.dart';
import 'package:text_selection_controls/text_selection_controls.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
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
            ),
            controller: _controller,
          ),
        ),
      ),
    );
  }
}
