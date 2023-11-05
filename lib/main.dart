import 'package:flutter/material.dart';
import 'package:introapp_21023/data/questions.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Questionscreen(),
    ),
  );
}

// ignore: camel_case_types
class startScreen extends StatelessWidget {
  const startScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(87, 169, 187, 69),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image.network(
            //"https://miro.medium.com/v2/resize:fit:720/format:webp/1*FBRsnCP9wE84UVW1Kkv5Yw.jpeg"),
            Image.asset(
              "assets/images/icon.png",
              width: 100,
              centerSlice: Rect.zero,
            ),

            const Text(
              "QUİZ APP",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("start"),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.fromLTRB(10, 10, 15, 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//fstless (stateleswidget kısaltması)  //boilerplate fstful(statefulwidget kısaltması)
class Questionscreen extends StatefulWidget {
  const Questionscreen({Key? key}) : super(key: key);

  @override
  _Questionscreen createState() => _Questionscreen();
}

class _Questionscreen extends State<Questionscreen> {
  int questionNumber = 0;

  void ChangeQuestion() {
    setState(() {
      questionNumber++;
    }); //değişikliklerin ekrana yansıması için gerekli.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(questions[questionNumber].question),
            ...questions[questionNumber].answers.map((answer) {
              return ElevatedButton(
                onPressed: () {
                  if (questionNumber < 5) ChangeQuestion();
                },
                child: Text(
                  answer,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
