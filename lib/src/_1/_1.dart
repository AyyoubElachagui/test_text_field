import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:text_selection_controls/text_selection_controls.dart';

class First extends StatefulWidget {
  First({Key? key,}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  String result = '';
  final HtmlEditorController controller = HtmlEditorController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!kIsWeb) {
          controller.clearFocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Test Nomber Four"),
          elevation: 0,
          actions: [
            IconButton(
                icon: Icon(Icons.refresh),
                onPressed: () {
                  if (kIsWeb) {
                    controller.reloadWeb();
                  } else {
                    controller.editorController!.reload();
                  }
                })
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              HtmlEditor(
                callbacks: Callbacks(
                  onBeforeCommand: (String? currentHtml){
                    print('$currentHtml onBeforeCommand   ---------------------------------------------------------------------------------------');
                  },
                  onChangeContent: (String? changed) {
                    print('------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
                    print('content changed to $changed onChangeContent  ---------------------------------------------------------------------------------------');
                  },
                  onChangeSelection: (EditorSettings settings) {

                    print('**************************************************************');
                    print("${controller.getSelectedTextWeb().then((value) =>  value)}");
                    print('parent element is ${settings.parentElement} onChangeSelection  ---------------------------------------------------------------------------------------');
                    print('font name is ${settings.fontName}  ${settings}  onChangeSelection  ---------------------------------------------------------------------------------------');
                  },
                  onNavigationRequestMobile: (String url) {
                    print(url);
                    return NavigationActionPolicy.ALLOW;
                  },
                  onFocus: () {
                    print('editor focused            ---------------------------------------------------------------------------------------');
                  },
                  onScroll: (){
                    print('onScroll            ---------------------------------------------------------------------------------------');
                  },

                ),
                controller: controller,
                htmlToolbarOptions: HtmlToolbarOptions(
                  defaultToolbarButtons: [
                    //StyleButtons(),
                    //FontSettingButtons(fontName: false),
                    FontButtons(),
                    /*ListButtons(),
                    ParagraphButtons(),
                    InsertButtons(),
                    OtherButtons(),*/
                  ],
                  customToolbarButtons: [
                    //CustomFont(),
                    //CustomTextColor(),
                    //Icon(Icons.format_bold)
                  ],

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}