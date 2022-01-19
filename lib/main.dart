import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dicee'),
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int LeftDiceNumber = 1;
  int RightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                RandomizeDice();
              });
            },
            child: Image(
              image: AssetImage('images/dice$LeftDiceNumber.png'),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                RandomizeDice();
              });
            },
            child: Image(
              image: AssetImage('images/dice$RightDiceNumber.png'),
            ),
          ),
        ),
      ],
    ));
  }

  void RandomizeDice() {
    LeftDiceNumber = Random().nextInt(5) + 1;
    RightDiceNumber = Random().nextInt(5) + 1;
  }
}
