import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.red,
    appBar: AppBar(
      backgroundColor: Colors.black,
      title: Text("Dice Game"),
    ),
    body: DicePage(),
  )));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var rightDiceNo = 3;
  var leftDiceNo = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    leftDiceNo = Random().nextInt(6);
                  });

                  print("Left Button is pressed");
                },
                child: Image.asset("Images/dice $leftDiceNo.png"),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    rightDiceNo = Random().nextInt(6) + 1;
                  });

                  print("Right button is pressed");
                },
                child: Image.asset("Images/dice$rightDiceNo.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
