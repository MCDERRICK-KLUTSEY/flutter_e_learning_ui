import 'package:flutter/material.dart';

class QuestionsOption extends StatefulWidget {
  const QuestionsOption({super.key, required this.label});

  final String label;

  @override
  State<QuestionsOption> createState() => _RadioButtonWigdetState();
}

class _RadioButtonWigdetState extends State<QuestionsOption> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.label,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
