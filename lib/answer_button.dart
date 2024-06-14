import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 100),
            backgroundColor: const Color.fromARGB(255, 96, 31, 108),
            foregroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 50),
          ),
          child: Text(answerText, textAlign: TextAlign.center,),
        ),
        const SizedBox(height: 10), // Отступ между кнопками в 10 пикселей
      ],
    );
  }
}
