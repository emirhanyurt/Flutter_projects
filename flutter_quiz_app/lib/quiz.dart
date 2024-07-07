import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/gradient_container.dart';

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer( Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 107, 95, 124))
      ),
    );
  }
}
