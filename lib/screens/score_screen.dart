import 'package:e_learning_ui/screens/solution_screen.dart';
import 'package:e_learning_ui/screens/test_report_screen.dart';
import 'package:flutter/material.dart';

class SCoreScreeen extends StatefulWidget {
  const SCoreScreeen({super.key});

  @override
  State<SCoreScreeen> createState() => _SolutionScreeenState();
}

class _SolutionScreeenState extends State<SCoreScreeen> {
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
                      builder: (context) => const SolutionScreeen()));
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
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[100]!,
                      spreadRadius: 2.0,
                      blurRadius: 3,
                    ),
                  ]),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('1'),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                        'What is the part of the animal cell that is labelled by A?'),
                  ),
                  Icon(Icons.check_circle_outline, color: Colors.green)
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[100]!,
                      spreadRadius: 2.0,
                      blurRadius: 3,
                    ),
                  ]),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('1'),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                        'What is the part of the animal cell that is labelled by A?'),
                  ),
                  Icon(Icons.check_circle_outline, color: Colors.green)
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[100]!,
                      spreadRadius: 2.0,
                      blurRadius: 3,
                    ),
                  ]),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('1'),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                        'What is the part of the animal cell that is labelled by A?'),
                  ),
                  Icon(Icons.arrow_circle_down_outlined, color: Colors.red)
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[100]!,
                      spreadRadius: 2.0,
                      blurRadius: 3,
                    ),
                  ]),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('1'),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                        'What is the part of the animal cell that is labelled by A?'),
                  ),
                  Icon(Icons.arrow_circle_down_outlined, color: Colors.red)
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[100]!,
                      spreadRadius: 2.0,
                      blurRadius: 3,
                    ),
                  ]),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('1'),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                        'What is the part of the animal cell that is labelled by A?'),
                  ),
                  Icon(Icons.arrow_circle_down_outlined, color: Colors.red)
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),

          //2
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[100]!,
                      spreadRadius: 2.0,
                      blurRadius: 3,
                    ),
                  ]),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('1'),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                        'What is the part of the animal cell that is labelled by A?'),
                  ),
                  Icon(Icons.check_circle_outline, color: Colors.green)
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[100]!,
                      spreadRadius: 2.0,
                      blurRadius: 3,
                    ),
                  ]),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('1'),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                        'What is the part of the animal cell that is labelled by A?'),
                  ),
                  Icon(Icons.arrow_circle_down_outlined, color: Colors.red)
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[100]!,
                      spreadRadius: 2.0,
                      blurRadius: 3,
                    ),
                  ]),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('1'),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                        'What is the part of the animal cell that is labelled by A?'),
                  ),
                  Icon(Icons.check_circle_outline, color: Colors.green)
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[100]!,
                      spreadRadius: 2.0,
                      blurRadius: 3,
                    ),
                  ]),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('1'),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                        'What is the part of the animal cell that is labelled by A?'),
                  ),
                  Icon(Icons.arrow_circle_down_outlined, color: Colors.red)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
