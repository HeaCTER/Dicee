import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Dicey'),
      ),
      body: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceLeftPic = 1;
  int diceRightPic = 1;

  void DiceHandler() {
    setState(() {
      diceLeftPic = Random().nextInt(6) + 1;
      diceRightPic = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$diceLeftPic.png'),
              onPressed: () {
                DiceHandler();
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$diceRightPic.png'),
              onPressed: () {
                DiceHandler();
              },
            ),
          ),
        ],
      ),
    );
  }
}
