import 'package:flutter/material.dart';
import './gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 46, 191, 244),
        body: GradientContainer(
          const Color.fromARGB(255, 26, 2, 80),
          const Color.fromARGB(255, 45, 7, 98),
        ),
      ),
    ),
  );
}
