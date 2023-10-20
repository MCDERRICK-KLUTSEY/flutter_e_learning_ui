import 'package:e_learning_ui/screens/declaration_screen.dart';
import 'package:e_learning_ui/screens/select_subject_test.dart';
import 'package:e_learning_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class TestPaperScreen extends StatefulWidget {
  const TestPaperScreen({super.key});

  @override
  State<TestPaperScreen> createState() => _TestPaperScreenState();
}

class _TestPaperScreenState extends State<TestPaperScreen> {
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
        title: const Column(
          children: [
            Text(
              'Test Paper',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(width: 5),
            Text(
              'Choose your level',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/book.png',
                      height: 100,
                    ), //change this image to a book
                    //step progress indicator
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const DeclarationScreen(),
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
        ),
      ),
    );
  }
}
