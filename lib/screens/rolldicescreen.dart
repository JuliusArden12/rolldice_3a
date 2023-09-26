import 'dart:math';

import 'package:flutter/material.dart';

class RollDiceScreen extends StatefulWidget {
  const RollDiceScreen({super.key});

  @override
  State<RollDiceScreen> createState() => _RollDiceScreenState();
}

class _RollDiceScreenState extends State<RollDiceScreen> {
  int activeDiceFace = 6;
  List<String> diceImage = [
    'https://upload.wikimedia.org/wikipedia/commons/2/2c/Alea_1.png',
    'https://upload.wikimedia.org/wikipedia/commons/b/b8/Alea_2.png',
    'https://upload.wikimedia.org/wikipedia/commons/2/2f/Alea_3.png',
    'https://upload.wikimedia.org/wikipedia/commons/8/8d/Alea_4.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/55/Alea_5.png',
    'https://upload.wikimedia.org/wikipedia/commons/f/f4/Alea_6.png',
    'https://media.tenor.com/images/afd885cf9751a4c6c33b699f6322143a/tenor.gif',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Colors.amber, Colors.red]),
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "RollDice",
                    style: TextStyle(fontSize: 30, color: Colors.deepPurple),
                  ),
                  SizedBox(height: 40),
                  Image.network(diceImage[activeDiceFace]),
                  SizedBox(height: 40),
                  TextButton(
                    onPressed: () {
                      var randomNum = Random().nextInt(6);
                      setState(() {
                        activeDiceFace = randomNum;
                      });
                      print('button pressed!');
                    },
                    child: const Text(
                      'CLICK HERE TO ROLL',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
