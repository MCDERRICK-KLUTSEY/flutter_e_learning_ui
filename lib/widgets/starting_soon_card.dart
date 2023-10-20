import 'package:e_learning_ui/utils/colors.dart';
import 'package:e_learning_ui/widgets/avatar_join.dart';
import 'package:e_learning_ui/widgets/zero_row.dart';
import 'package:flutter/material.dart';

class StartingSoonCard extends StatelessWidget {
  const StartingSoonCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 226, 148, 240),
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/biology.jpg'),
                ),
                ZeroRow(),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Math Class'),
                    Text(
                      'starting soon',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                Container(),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AvatarJoind(),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 243, 168, 28),
                    border: Border.all(color: borderColor),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'Join Class',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: textColorOne,
                        fontSize: 15),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
