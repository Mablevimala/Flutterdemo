import 'package:flutter/material.dart';

class PreviewScreen extends StatelessWidget {
  final void Function() startQuiz;
   
   const PreviewScreen(this.startQuiz, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            const Text(
              'Quizard',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              '1000+ quizzes to challenge you and your friends on all topics',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            Image.asset(
              'lib/Assets/question_mark-removebg-preview.png',
              width: 400,
              height: 500,
              color: Colors.black,
            ),
            const SizedBox(height: 50),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Quiz'),
            ),
          ],
        ),
      );
    
  }
}
