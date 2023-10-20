import 'package:e_learning_ui/screens/select_subject_test.dart';
import 'package:e_learning_ui/screens/solution_screen.dart';
import 'package:e_learning_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TestReportScreen extends StatefulWidget {
  const TestReportScreen({super.key});

  @override
  State<TestReportScreen> createState() => _TestReportScreenState();
}

class _TestReportScreenState extends State<TestReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const SelectSubjectTest()));
            });
          },
          child: Container(

              // margin: EdgeInsets.all(5),
              padding: const EdgeInsets.only(left: 25),
              // decoration: BoxDecoration(
              //   color: Colors.white,
              //   border: Border.all(color: borderColor),
              //   borderRadius: BorderRadius.circular(12),
              //),
              child: const Icon(Icons.arrow_back_ios_outlined)),
        ),
        title: const Text(
          'Test Report',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircularPercentIndicator(
            radius: 90.0,
            animation: true,
            animationDuration: 1200,
            lineWidth: 15.0,
            percent: 0.75,
            center: const Text(
              "75%",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            circularStrokeCap: CircularStrokeCap.butt,
            backgroundColor: Colors.grey[300]!,
            linearGradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 76, 168, 243),
                  Color.fromARGB(255, 250, 58, 122),
                ],
                stops: [
                  0.0,
                  2.0
                ]),
            rotateLinearGradient: true,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.circle,
                    size: 15,
                    color: Color.fromARGB(255, 76, 168, 243),
                  ),
                  SizedBox(width: 10),
                  Text('Count'),
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.circle,
                    size: 15,
                    color: Color.fromARGB(255, 250, 58, 122),
                  ),
                  SizedBox(width: 10),
                  Text('Count'),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    size: 15,
                    color: Colors.grey[300],
                  ),
                  const SizedBox(width: 10),
                  const Text('Count'),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey[100]!,
                //     spreadRadius: 2.0,
                //     blurRadius: 10,
                //   ),
                //]
              ),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Questions'),
                      Text('20'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Approved'),
                      Text('14'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Skipped'),
                      Text('02'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Correct'),
                      Text('12'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Incorrect'),
                      Text('04'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Time'),
                      Text('12 mins'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SolutionScreeen(),
                    ),
                  );
                });
              },
              child: Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: primaryColor,
                  border: Border.all(
                    color: primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    'See the answers',
                    style: TextStyle(
                      color: textColorOne,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
