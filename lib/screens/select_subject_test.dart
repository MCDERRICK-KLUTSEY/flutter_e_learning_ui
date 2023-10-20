import 'package:e_learning_ui/screens/course_screen.dart';
import 'package:e_learning_ui/screens/test_paper_screen.dart';
import 'package:e_learning_ui/utils/colors.dart';
import 'package:e_learning_ui/widgets/select_your_subject.dart';
import 'package:flutter/material.dart';

class SelectSubjectTest extends StatefulWidget {
  const SelectSubjectTest({super.key});

  @override
  State<SelectSubjectTest> createState() => _SelectSubjectScreenState();
}

class _SelectSubjectScreenState extends State<SelectSubjectTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const CourseScreen()));
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
              child: Icon(Icons.arrow_back_ios_outlined)),
        ),
        title: Text(
          'Select your subject',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //const SizedBox(height: 5),
            //various classes to be selected
            Column(
              children: [
                const SelectYourSubject(),
              ],
            ),

            const SizedBox(height: 40),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const TestPaperScreen(),
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
                      'Next',
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
      ),
    );
  }
}
