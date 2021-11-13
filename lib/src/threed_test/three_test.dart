/*import 'dart:ui';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class TextFieldColorizer extends TextEditingController {
  final Map<String, TextStyle> map;
  final Pattern pattern;

  TextFieldColorizer(this.map)
      : pattern = RegExp(
      map.keys.map((key) {
        return key;
      }).join('|'),
      multiLine: true);

  @override
  set text(String newText) {
    value = value.copyWith(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
      composing: TextRange.empty,
    );
  }

  @override
  TextSpan buildTextSpan({TextStyle style, bool withComposing}) {
    final List<InlineSpan> children = [];
    String patternMatched;
    String formatText;
    TextStyle myStyle;
    text.splitMapJoin(
      pattern,
      onMatch: (Match match) {
        myStyle = map[match[0]] ??
            map[map.keys.firstWhere(
                  (e) {
                bool ret = false;
                RegExp(e).allMatches(text)
                  ..forEach((element) {
                    if (element.group(0) == match[0]) {
                      patternMatched = e;
                      ret = true;
                      return true;
                    }
                  });
                return ret;
              },
            )];

        if (patternMatched == r"_(.*?)\_") {
          formatText = match[0].replaceAll("_", " ");
        } else if (patternMatched == r'\*(.*?)\*') {
          formatText = match[0].replaceAll("*", " ");
        } else if (patternMatched == "~(.*?)~") {
          formatText = match[0].replaceAll("~", " ");
        } else if (patternMatched == r'```(.*?)```') {
          formatText = match[0].replaceAll("```", "   ");
        } else {
          formatText = match[0];
        }
        children.add(TextSpan(
          text: formatText,
          style: style.merge(myStyle),
        ));
        return "";
      },
      onNonMatch: (String text) {
        children.add(TextSpan(text: text, style: style));
        return "";
      },
    );

    return TextSpan(style: style, children: children);
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget();
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final TextEditingController _controller = TextFieldColorizer(
    {
      r"@.\w+": TextStyle(color: Colors.blue, shadows: kElevationToShadow[2]),
      'red': const TextStyle(
          color: Colors.red, decoration: TextDecoration.underline),
      'green': TextStyle(color: Colors.green, shadows: kElevationToShadow[2]),
      'purple': TextStyle(color: Colors.purple, shadows: kElevationToShadow[2]),
      r'_(.*?)\_': TextStyle(
          fontStyle: FontStyle.italic, shadows: kElevationToShadow[2]),
      '~(.*?)~': TextStyle(
          decoration: TextDecoration.lineThrough,
          shadows: kElevationToShadow[2]),
      r'\*(.*?)\*': TextStyle(
          fontWeight: FontWeight.bold, shadows: kElevationToShadow[2]),
      r'```(.*?)```': TextStyle(
          color: Colors.yellow,
          fontFeatures: [const FontFeature.tabularFigures()],
          shadows: kElevationToShadow[2]),
    },
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        maxLines: 5,
        onChanged: (text) {
          final val = TextSelection.collapsed(offset: _controller.text.length);
          _controller.selection = val;
        },
        style: const TextStyle(fontSize: 32),
        controller: _controller,
      ),
    );
  }
}*/