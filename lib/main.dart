import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// コード量を減らしたstoryboard最小サンプル
/// No.1 main method
Future<void> main() async {
  runApp(MyApp()); /// MyApp() Call No.2
}

/// No.2 Basic Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Storyboard(
        [
          BoxWidgetStory(), /// BoxWidgetStory() Call No.3 - Story Widget 1
          TextFieldWidgetStory(), /// TextFieldWidgetStory() Call No.4 - Story Widget 2
        ],
      ),
    );
  }
}

/// No.3 Story Widget 1
class BoxWidgetStory extends Story {
  @override
  String get title => 'Box Widget Story';

  @override
  List<Widget> get storyContent {
    return [
      Container(
        constraints: const BoxConstraints.expand(height: 50, width: 50),
        child: Placeholder(
          color: Colors.blueGrey,
        ),
      ),
    ];
  }
}

/// No.4 Story Widget 2
class TextFieldWidgetStory extends Story {
  @override
  String get title => 'Text Widget Story';

  @override
  List<Widget> get storyContent {
    return [
      Text("This is a text",)
    ];
  }
}
