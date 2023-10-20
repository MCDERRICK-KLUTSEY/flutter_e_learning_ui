import 'package:e_learning_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class FreeCourses extends StatefulWidget {
  const FreeCourses({
    super.key,
  });

  @override
  State<FreeCourses> createState() => _TodaysClassWidgState();
}

class _TodaysClassWidgState extends State<FreeCourses> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      width: 450,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 25, top: 15, right: 25, bottom: 25),
            child: Container(
              height: 200,
              width: 350,
              padding: const EdgeInsets.only(left: 10, top: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 250, 235, 101),
                //border: Border.all(color: borderColor),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: borderColor,
                    spreadRadius: 2,
                    blurRadius: 15,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  Text(
                    'Chemistry',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.play_circle_outline_outlined),
                      SizedBox(width: 6),
                      Text(
                        '12 hours ',
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.play_circle_outline_outlined),
                      SizedBox(width: 6),
                      Text(
                        '12 hours ',
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.play_circle_outline_outlined),
                      SizedBox(width: 6),
                      Text(
                        '12 hours ',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 25, top: 15, right: 25, bottom: 25),
            child: Container(
              height: 200,
              width: 350,
              padding: const EdgeInsets.only(left: 10, top: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 250, 235, 101),
                //border: Border.all(color: borderColor),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: borderColor,
                    spreadRadius: 2,
                    blurRadius: 15,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  Text(
                    'Chemistry',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.play_circle_outline_outlined),
                      SizedBox(width: 6),
                      Text(
                        '12 hours ',
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.play_circle_outline_outlined),
                      SizedBox(width: 6),
                      Text(
                        '12 hours ',
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.play_circle_outline_outlined),
                      SizedBox(width: 6),
                      Text(
                        '12 hours ',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
