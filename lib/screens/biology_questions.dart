import 'package:e_learning_ui/screens/declaration_screen.dart';
import 'package:e_learning_ui/screens/test_report_screen.dart';
import 'package:e_learning_ui/utils/colors.dart';
import 'package:e_learning_ui/widgets/questions_option.dart';
import 'package:e_learning_ui/widgets/zero_row.dart';
import 'package:flutter/material.dart';

class BiologyQuestions extends StatefulWidget {
  const BiologyQuestions({super.key});

  @override
  State<BiologyQuestions> createState() => _BiologyQuestionsState();
}

class _BiologyQuestionsState extends State<BiologyQuestions> {
  int? _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const DeclarationScreen()));
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
            child: const Icon(Icons.arrow_back_ios_outlined),
          ),
        ),
        title: const Text(
          'Biology',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 25),
            child: const ZeroRow(),
          ),
        ],
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
                  'Questions 20/20',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: textColorTwo),
                ),
                const SizedBox(height: 15),
                const Row(
                  children: [
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Your trusted Partner for Comprehensive Financial Solutions',
                        style: TextStyle(fontSize: 16, color: textColorTwo),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 40),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: borderColor),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Radio(
                              activeColor: Colors.black,
                              value: 1,
                              groupValue: _value,
                              onChanged: (val) {
                                setState(() {
                                  _value = val;
                                });
                              },
                            ),
                            const QuestionsOption(label: 'A. Cell membrane'),
                            Container()
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: borderColor),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Radio(
                              activeColor: Colors.black,
                              value: 2,
                              groupValue: _value,
                              onChanged: (val) {
                                setState(() {
                                  _value = val;
                                });
                              },
                            ),
                            const QuestionsOption(label: 'B. Chlorophyll'),
                            Container()
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: borderColor),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Radio(
                              activeColor: Colors.black,
                              value: 3,
                              groupValue: _value,
                              onChanged: (val) {
                                setState(() {
                                  _value = val;
                                });
                              },
                            ),
                            const QuestionsOption(label: 'C. Nucleus'),
                            Container()
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: borderColor),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Radio(
                              activeColor: Colors.black,
                              value: 4,
                              groupValue: _value,
                              onChanged: (val) {
                                setState(() {
                                  _value = val;
                                });
                              },
                            ),
                            const QuestionsOption(label: 'D. Nutrons'),
                            Container()
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: GestureDetector(
                    onTap: () {
                      _showBottomSheet(context);
                    },
                    child: Column(
                      children: [
                        Container(
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
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                //Skip button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Center(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          color: textColorTwo,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> _showBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        isDismissible: false,
        context: context,
        builder: ((context) {
          return Container(
            padding: EdgeInsets.all(25),

            // width: 600,
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).pop();
                        });
                      },
                      icon: Icon(Icons.close),
                    ),
                    Container(),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 202, 227, 248),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/image3.png',
                    width: 120,
                  ),
                ),
                const Text(
                  'Submit Exam?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: textColorTwo),
                ),
                const Text(
                  'Hey, Are you sure want to submit this exam?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: textColorTwo,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const TestReportScreen(),
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
                          'Yes',
                          style: TextStyle(
                            color: textColorOne,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }));
  }
}
