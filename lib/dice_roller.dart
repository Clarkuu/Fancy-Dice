import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';
  int rollCount = 0;
  int diceTimer = 200;

  void rollDice() {
    rollCount = 0;
    startRolling();
  }

  void startRolling() {
    late Timer timer;
    int currentDuration = diceTimer;
    timer = Timer.periodic(Duration(milliseconds: currentDuration), (timer) {
      if (rollCount < 5) {
        setState(() {
          var diceRoll = Random().nextInt(6) + 1;
          activeDiceImage = 'assets/images/dice-$diceRoll.png';
          currentDuration += 500;
        });
        rollCount++;
        currentDuration += 500;
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(20),
            primary: Colors.white,
          ),
          child: const Text(
            "Roll!",
            style: TextStyle(fontSize: 25),
          ),
        )
      ],
    );
  }
}
