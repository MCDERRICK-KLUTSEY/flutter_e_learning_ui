import 'package:e_learning_ui/screens/course_details_screen.dart';
import 'package:e_learning_ui/screens/course_screen.dart';
import 'package:e_learning_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class PremiumCourseSCreen extends StatefulWidget {
  const PremiumCourseSCreen({super.key});

  @override
  State<PremiumCourseSCreen> createState() => _PremiumCourseSCreenState();
}

class _PremiumCourseSCreenState extends State<PremiumCourseSCreen> {
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
              child: const Icon(Icons.arrow_back_ios_outlined)),
        ),
        title: const Text(
          'Premium Close',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 25, top: 15, right: 25, bottom: 25),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const CourseDetailsScreen()));
                });
              },
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
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 180,
                          width: 350,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 193, 212, 223),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset('assets/images/image4.png',
                              height: 100),
                        ),
                        Positioned(
                          top: 16,
                          right: 16,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.add_shopping_cart_outlined,
                              color: Colors.grey[300],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -12,
                          right: 16,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[300]!,
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            child: const Text(
                              '\$45.00',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/biology.jpg'),
                        ),
                        SizedBox(width: 6),

                        Text(
                          'Chris Terminator',
                        ),
                        // SizedBox(width: 15),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'English Spoken',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Icon(Icons.play_circle_outline),
                        SizedBox(width: 6),
                        Text(
                          '12 hours - ',
                        ),
                        SizedBox(width: 15),
                        Icon(Icons.watch_later_outlined),
                        SizedBox(width: 6),
                        Text(
                          '13 months',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding:
                const EdgeInsets.only(left: 25, top: 15, right: 25, bottom: 25),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const CourseDetailsScreen()));
                });
              },
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
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 180,
                          width: 350,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 172, 200, 252),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset('assets/images/image1.png',
                              height: 100),
                        ),
                        Positioned(
                          top: 16,
                          right: 16,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.add_shopping_cart_outlined,
                              color: Colors.grey[300],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -12,
                          right: 16,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[300]!,
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            child: const Text(
                              '\$45.00',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/image1.png'),
                        ),
                        SizedBox(width: 6),

                        Text(
                          'Chris Terminator',
                        ),
                        // SizedBox(width: 15),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'English Spoken',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Icon(Icons.play_circle_outline),
                        SizedBox(width: 6),
                        Text(
                          '12 hours - ',
                        ),
                        SizedBox(width: 15),
                        Icon(Icons.watch_later_outlined),
                        SizedBox(width: 6),
                        Text(
                          '13 months',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding:
                const EdgeInsets.only(left: 25, top: 15, right: 25, bottom: 25),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const CourseDetailsScreen()));
                });
              },
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
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 180,
                          width: 350,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 195, 195, 196),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset('assets/images/image2.png',
                              height: 100),
                        ),
                        Positioned(
                          top: 16,
                          right: 16,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.add_shopping_cart_outlined,
                              color: Colors.grey[300],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -12,
                          right: 16,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[300]!,
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            child: const Text(
                              '\$45.00',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/image2.png'),
                        ),
                        SizedBox(width: 6),

                        Text(
                          'Chris Terminator',
                        ),
                        // SizedBox(width: 15),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'English Spoken',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Icon(Icons.play_circle_outline),
                        SizedBox(width: 6),
                        Text(
                          '12 hours - ',
                        ),
                        SizedBox(width: 15),
                        Icon(Icons.watch_later_outlined),
                        SizedBox(width: 6),
                        Text(
                          '13 months',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
