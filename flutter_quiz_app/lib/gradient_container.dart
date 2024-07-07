import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/first_screen.dart';
import 'package:flutter_quiz_app/questions_screen.dart';
import 'package:flutter_quiz_app/results_screen.dart';

const styleAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;

class GradientContainer extends StatefulWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  @override
  State<GradientContainer> createState() => _GradientContainer();
}

class _GradientContainer extends State<GradientContainer> {
   List<String> selectedAnswers = [];
  var activeScreen = "first-screen";
void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }
  void switchScreen() {

    setState(() {
      activeScreen = "question-screen";
    });
  }
  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length){
      setState(() {
      
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  void initState() {
    activeScreen = "first-screen";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [widget.color1, widget.color2],
        begin: styleAligment,
        end: endAligment,
      ),
    ),
    child: activeScreen == "first-screen"
        ? FirstScreen(switchScreen)
        : activeScreen == "results-screen"
            ?  ResultsScreen(onRestart: restartQuiz,chosenAnswers: selectedAnswers,)
            : QuestionsScreen(
                onSelectAnswer: chooseAnswer,
              ),
  );
}
}
