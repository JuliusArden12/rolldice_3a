import 'package:flutter/material.dart';
import 'package:roll_dice_3a/screens/rolldicescreen.dart';

void main() {
  runApp(RollDiceApp());
}

class RollDiceApp extends StatelessWidget {
  const RollDiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: RollDiceScreen());
  }
}
