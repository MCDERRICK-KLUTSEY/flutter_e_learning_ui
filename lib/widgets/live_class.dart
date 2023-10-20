import 'package:e_learning_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class LiveClass extends StatefulWidget {
  const LiveClass({
    super.key,
  });

  @override
  State<LiveClass> createState() => _TodaysClassWidgState();
}

class _TodaysClassWidgState extends State<LiveClass> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      width: 450,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 25, top: 15, right: 25, bottom: 25),
            child: Container(
              // height: 200,
              // width: 270,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                //border: Border.all(color: borderColor),
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: borderColor,
                    spreadRadius: 2,
                    blurRadius: 15,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 180,
                    width: 330,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 117, 117, 117),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset('assets/images/image4.png', height: 100),
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Class 9',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        '\$454.00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    children: [
                      Icon(Icons.play_circle_outline),
                      SizedBox(width: 6),
                      Text(
                        '12 hours ',
                      ),
                      SizedBox(width: 15),
                      Text(
                        '13 months',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, right: 25, bottom: 25),
            child: Container(
              // height: 200,
              // width: 270,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                //border: Border.all(color: borderColor),
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: borderColor,
                    spreadRadius: 2,
                    blurRadius: 15,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 180,
                    width: 330,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 117, 117, 117),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset('assets/images/image2.png', height: 100),
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Class 9',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        '\$454.00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    children: [
                      Icon(Icons.play_circle_outline),
                      SizedBox(width: 6),
                      Text(
                        '12 hours ',
                      ),
                      SizedBox(width: 15),
                      Text(
                        '13 months',
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
