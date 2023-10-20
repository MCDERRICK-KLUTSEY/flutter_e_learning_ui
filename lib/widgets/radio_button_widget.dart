import 'package:flutter/material.dart';

class RadioButtonWigdet extends StatefulWidget {
  const RadioButtonWigdet(
      {super.key, required this.image, required this.label});
  final String image;
  final String label;

  @override
  State<RadioButtonWigdet> createState() => _RadioButtonWigdetState();
}

class _RadioButtonWigdetState extends State<RadioButtonWigdet> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(right: 20),
          child: Image.asset(
            widget.image,
            height: 40,
          ),
        ),
        Text(
          widget.label,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
