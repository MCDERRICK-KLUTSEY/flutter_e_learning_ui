import 'package:e_learning_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class TodaysClassWidg extends StatefulWidget {
  const TodaysClassWidg(
      {super.key,
      required this.image,
      required this.subject,
      required this.timename,
      required this.icon,
      required this.duration,
      required this.decolor});
  final String image;
  final String subject;
  final IconData icon;
  final String timename;
  final String duration;
  final Color decolor;

  @override
  State<TodaysClassWidg> createState() => _TodaysClassWidgState();
}

class _TodaysClassWidgState extends State<TodaysClassWidg> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 25, right: 25),
      child: Container(
        // height: 200,
        width: 270,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          //border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: borderColor,
              spreadRadius: 2,
              blurRadius: 15,
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
                  height: 150,
                  width: 260,
                  decoration: BoxDecoration(
                    color: widget.decolor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(widget.image, height: 100),
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.circle,
                          color: Colors.red,
                          size: 15,
                        ),
                        Text(
                          'Live',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              widget.subject,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Icon(widget.icon),
                Text(widget.timename),
                const SizedBox(width: 15),
                Text(
                  widget.duration,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
