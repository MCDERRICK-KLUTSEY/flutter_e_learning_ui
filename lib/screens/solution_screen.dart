import 'package:e_learning_ui/screens/score_screen.dart';
import 'package:e_learning_ui/screens/test_report_screen.dart';
import 'package:flutter/material.dart';

class SolutionScreeen extends StatefulWidget {
  const SolutionScreeen({super.key});

  @override
  State<SolutionScreeen> createState() => _SolutionScreeenState();
}

class _SolutionScreeenState extends State<SolutionScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const TestReportScreen()));
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
          'Solution',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        centerTitle: true,
        toolbarHeight: 100,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: TextButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const SCoreScreeen()));
                });
              },
              child: const Text(
                'Caption all',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.black45,
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[100]!,
                      spreadRadius: 2.0,
                      blurRadius: 5,
                    ),
                  ]),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Questions 01/20',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  Text(
                      'What is the part of the animal cell that is labelled by A?'),
                  SizedBox(height: 25),
                  Text(
                    'Answer:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text('te thhe ththe hthh eeh '),
                  SizedBox(height: 20),
                  Text(' ththe hthh eeh'),
                  SizedBox(height: 20),
                  Text('23/45 ththe = hthh eeh'),
                  SizedBox(height: 20),
                  Text(' ththe hthh eeh'),
                  SizedBox(height: 20),
                  Text(' ththe hthh eeh = hott'),
                  SizedBox(height: 20),
                  Text(
                      'Ththe hthh eeh hte tthtt eeeroioe ereir eroe eroer hott '),
                ],
              ),
            ),
          ),
          //2
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[100]!,
                      spreadRadius: 2.0,
                      blurRadius: 5,
                    ),
                  ]),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Questions 02/20',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  Text(
                      'What is the part of the animal cell that is labelled by A?'),
                  SizedBox(height: 25),
                  Text(
                    'Answer:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text('te thhe ththe hthh eeh '),
                  SizedBox(height: 20),
                  Text(' ththe hthh eeh'),
                  SizedBox(height: 20),
                  Text('23/45 ththe = hthh eeh'),
                  SizedBox(height: 20),
                  Text(' ththe hthh eeh'),
                  SizedBox(height: 20),
                  Text(' ththe hthh eeh = hott'),
                  SizedBox(height: 20),
                  Text(
                      'The hthh eeh hte tthtt eeeroioe ereir eroe eroer hott '),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
