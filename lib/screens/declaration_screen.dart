import 'package:e_learning_ui/screens/biology_questions.dart';
import 'package:e_learning_ui/screens/select_subject_test.dart';
import 'package:e_learning_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class DeclarationScreen extends StatefulWidget {
  const DeclarationScreen({super.key});

  @override
  State<DeclarationScreen> createState() => _TestPaperScreenState();
}

class _TestPaperScreenState extends State<DeclarationScreen> {
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
          'Declaration',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Instructions to follow
                const Text(
                  'Instructions to follow',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 15),
                const Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 10,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Your trusted Partner for Comprehensive Financial Solutions',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                const Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 10,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Your trusted Partner for Comprehensive Financial Solutions',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Overview',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 16),
                        children: [
                          TextSpan(
                            text: 'Exams: ',
                            //  style: TextStyle(color: Colors.black54, fontSize: 16),
                          ),
                          TextSpan(
                            text: '01/GOM/Physics',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 16),
                        children: [
                          TextSpan(
                            text: 'Subject: ',
                            //  style: TextStyle(color: Colors.black54, fontSize: 16),
                          ),
                          TextSpan(
                            text: 'Physics',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 16),
                        children: [
                          TextSpan(
                            text: '20 ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                          TextSpan(
                            text: 'questions, ',
                          ),
                          TextSpan(
                            text: '20 ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                          TextSpan(
                            text: 'marks, ',
                          ),
                          TextSpan(
                            text: '20 ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                          TextSpan(
                            text: 'minutes',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const BiologyQuestions(),
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
                      'I understand',
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
