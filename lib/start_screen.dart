import 'package:flutter/material.dart';
import 'package:introapp_21023/swiper_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {Key? key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(87, 169, 187, 69),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/icon.png",
              width: 100,
              centerSlice: Rect.zero,
            ),
            const Text(
              "QUIZ APP",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const SwiperScreen(),
                ));
              },
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Start"),
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
