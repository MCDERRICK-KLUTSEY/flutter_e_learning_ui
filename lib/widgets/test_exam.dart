import 'package:e_learning_ui/screens/select_subject_test.dart';
import 'package:e_learning_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class TestExam extends StatefulWidget {
  const TestExam({
    super.key,
  });

  @override
  State<TestExam> createState() => _TestExamState();
}

class _TestExamState extends State<TestExam> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const SelectSubjectTest()));
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 165, 209, 245),
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/biology.jpg',
                    height: 50,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Test Exam',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text('Let\s check paper'),
                        Text('presentation'),
                      ],
                    ),
                  ),
                ],
              ),
              const Icon(Icons.arrow_forward_ios_outlined)
            ],
          ),
        ),
      ),
    );
  }
}
