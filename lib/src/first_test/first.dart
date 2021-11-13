import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:filesystem_picker/filesystem_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_quill/flutter_quill.dart' hide Text;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tuple/tuple.dart';


class FirstTest extends StatefulWidget {
  @override
  _FirstTestState createState() => _FirstTestState();
}
QuillController _controller = QuillController.basic();

class _FirstTestState extends State<FirstTest> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              QuillToolbar.basic(controller: _controller),
              Text("${_controller}"),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  child: QuillEditor.basic(
                    controller: _controller,
                    readOnly: false, // true for view only mode
                  ),
                ),
              ),

            ],
          ),
        )
    );
  }
}
