import 'package:flutter/material.dart';

class AvatarJoind extends StatelessWidget {
  const AvatarJoind({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/biology.jpg'),
        ),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/biology.jpg'),
        ),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/biology.jpg'),
        ),
      ],
    );
  }
}
