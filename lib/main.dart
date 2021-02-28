import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice App'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  final _random = new Random();
  int min = 1;
  int max = 7;

  int dice1 = 1, dice2 = 3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      dice1 = min + _random.nextInt(max - min);
                    });
                  },
                  child: Image.asset('assets/img/dice$dice1.png'))),
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    dice2 = min + _random.nextInt(max - min);
                  });
                },
                child: Image.asset('assets/img/dice$dice2.png')),
          ),
        ],
      ),
    );
  }
}
