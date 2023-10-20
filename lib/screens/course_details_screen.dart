import 'package:e_learning_ui/screens/premium_course_screen.dart';
import 'package:e_learning_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class CourseDetailsScreen extends StatefulWidget {
  const CourseDetailsScreen({super.key});

  @override
  State<CourseDetailsScreen> createState() => _CourseDetailsScreenState();
}

class _CourseDetailsScreenState extends State<CourseDetailsScreen> {
  int selectedButton = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const PremiumCourseSCreen()));
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
          'Details about course',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        centerTitle: true,
        toolbarHeight: 100,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: TextButton(
              onPressed: () {
                // setState(() {
                //   Navigator.of(context).pushReplacement(MaterialPageRoute(
                //       builder: (context) => const SCoreScreeen()));
                // });
              },
              child: const Icon(
                Icons.add_shopping_cart_outlined,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Container(
        // height: 200,
        // width: 270,
        padding: const EdgeInsets.all(10),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 195, 195, 196),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset('assets/images/image2.png', height: 100),
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
              ],
            ),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'English Speaking',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  '\$80.00',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ],
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
            const SizedBox(height: 15),
            const Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/image2.png'),
                ),
                SizedBox(width: 6),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'David Plary',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'English Speaking',
                    ),
                  ],
                ),
                // SizedBox(width: 15),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: borderColor,
                border: Border.all(
                  color: borderColor,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 192,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedButton = 0;
                        });
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                        elevation:
                            MaterialStateProperty.resolveWith<double>((states) {
                          return selectedButton == 0 ? 3 : 0;
                        }),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>((states) {
                          return selectedButton == 0
                              ? Colors.white
                              : Colors.grey[200]!;
                        }),
                      ),
                      child: const Text("Decline",
                          style: TextStyle(color: textColorTwo)),
                    ),
                  ),
                  SizedBox(
                    width: 192,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedButton = 1;
                        });
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                        elevation:
                            MaterialStateProperty.resolveWith<double>((states) {
                          return selectedButton == 1 ? 3 : 0;
                        }),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>((states) {
                          return selectedButton == 1
                              ? Colors.white
                              : Colors.grey[200]!;
                        }),
                      ),
                      child: const Text("Request",
                          style: TextStyle(color: textColorTwo)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
                'They also have experts who are willing and ready to provide you any kind of help and support regrading managing your finance, and on products and services they provide.'),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Students',
                    ),
                    Text(
                      '14,331',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Language',
                    ),
                    Text(
                      'English',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                Container(),
              ],
            ),
            const SizedBox(height: 15),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Language',
                ),
                Text(
                  'English',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: GestureDetector(
                onTap: () {},
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
                      'Buy now',
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
