import 'package:e_learning_ui/screens/premium_course_screen.dart';
import 'package:e_learning_ui/utils/colors.dart';
import 'package:e_learning_ui/widgets/free_course.dart';
import 'package:e_learning_ui/widgets/live_class.dart';
import 'package:e_learning_ui/widgets/premium_course.dart';
import 'package:e_learning_ui/widgets/starting_soon_card.dart';
import 'package:e_learning_ui/widgets/test_exam.dart';
import 'package:e_learning_ui/widgets/today_class_widg.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 20, top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Hurray!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
        ),
        leadingWidth: 150,
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: borderColor),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.search),
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/biology.jpg'),
                ),
              ],
            ),
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(height: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //card for starting soon
              const StartingSoonCard(),
              const SizedBox(height: 15),

              //Today's class
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Text(
                      'Today\'s',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Class',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 270,
                width: 500,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Row(
                      children: [
                        TodaysClassWidg(
                          image: 'assets/images/image1.png',
                          subject: 'Biology',
                          timename: 'Time Duration',
                          icon: Icons.watch_later_outlined,
                          duration: '1:00h',
                          decolor: Color.fromARGB(255, 250, 235, 101),
                        ),
                        TodaysClassWidg(
                            image: 'assets/images/image2.png',
                            subject: 'Biology',
                            timename: 'Time Duration',
                            icon: Icons.watch_later_outlined,
                            duration: '1:00h',
                            decolor: Color.fromARGB(255, 226, 148, 240)),
                        TodaysClassWidg(
                          image: 'assets/images/image3.png',
                          subject: 'Biology',
                          timename: 'Time Duration',
                          icon: Icons.watch_later_outlined,
                          duration: '1:00h',
                          decolor: Color.fromARGB(255, 250, 235, 101),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              //Container for Text Exam
              const TestExam(),
              const SizedBox(height: 40),

              //cards for premium courses
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Premium',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Courses',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PremiumCourseSCreen()));
                      },
                      child: const Text(
                        'See all',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),

              const PremiumCourses(),

              const SizedBox(width: 40),

              //Cards for Live courses
              const Padding(
                padding: EdgeInsets.only(left: 25, top: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Live',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Courses',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'See all',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              LiveClass(),
              //cards for Free courses
              const Padding(
                padding: EdgeInsets.only(left: 25, top: 10, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Free',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Courses',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const FreeCourses(),
            ],
          )
        ],
      ),
    );
  }
}
