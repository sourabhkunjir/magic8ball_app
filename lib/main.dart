import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(Magic8ball());
}

class Magic8ball extends StatefulWidget {
  const Magic8ball({super.key});

  @override
  State<Magic8ball> createState() => _Magic8ballState();
}

class _Magic8ballState extends State<Magic8ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: GestureDetector(
          onTap: () {
            generateRandomNumber();
          },
          child: Center(
            child: Column(
              children: [
                Text(
                  "ask me anything !",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/magic8ball_$ballNumber.png",
                    height: 600,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void generateRandomNumber() {
    Random random = Random();
    ballNumber = random.nextInt(20) + 1;
    setState(() {});
  }
}
