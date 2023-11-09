import 'package:flutter/material.dart';
import 'package:introapp_21023/start_screen.dart';
import 'package:introapp_21023/question_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      home: SwiperScreen(),
    ),
  );
}

class SwiperScreen extends StatefulWidget {
  const SwiperScreen({Key? key}) : super(key: key);

  @override
  _SwiperScreenState createState() => _SwiperScreenState();
}

class _SwiperScreenState extends State<SwiperScreen> {
  var _activeScreenName = "start-screen";

  void changeScreen() {
    setState(() {
      _activeScreenName = "Quiz-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = StartScreen(changeScreen);

    if (_activeScreenName == "Quiz-screen") {
      activeScreen = QuestionScreen(goToResultPage: (score) {
        setState(() {
          _activeScreenName = "start-screen";
        });
      });
    }

    return activeScreen;
  }
}
