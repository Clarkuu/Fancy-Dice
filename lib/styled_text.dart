import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  StyledText(
    this.text, {
    Key? key,
  }) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 28.5,
        ));
  }
}
