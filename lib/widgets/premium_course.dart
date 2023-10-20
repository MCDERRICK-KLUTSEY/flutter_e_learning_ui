import 'package:e_learning_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class PremiumCourses extends StatelessWidget {
  const PremiumCourses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 500,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 25, top: 15, right: 15, bottom: 1),
            child: Container(
              height: 150,
              width: 300,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: borderColor),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 130,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset(
                          'assets/images/image3.png',
                          width: 30,
                          height: 50,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'English Speaking',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.watch_later_outlined),
                                  SizedBox(width: 6),
                                  Text(
                                    '24 minutes',
                                    style: TextStyle(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star,
                                      color: Color.fromARGB(255, 226, 193, 3)),
                                  SizedBox(width: 10),
                                  Text(
                                    '4.8',
                                  ),
                                ],
                              ),
                              SizedBox(width: 60),
                              Text(
                                '\$45.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 25, bottom: 1),
            child: Container(
              height: 150,
              width: 300,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: borderColor),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 130,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 233, 204),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset(
                          'assets/images/image4.png',
                          width: 30,
                          height: 50,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Physics',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.watch_later_outlined),
                                  SizedBox(width: 6),
                                  Text(
                                    '24 minutes',
                                    style: TextStyle(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star,
                                      color: Color.fromARGB(255, 226, 193, 3)),
                                  SizedBox(width: 10),
                                  Text(
                                    '4.8',
                                  ),
                                ],
                              ),
                              SizedBox(width: 60),
                              Text(
                                '\$45.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
