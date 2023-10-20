import 'package:e_learning_ui/utils/colors.dart';
import 'package:e_learning_ui/widgets/radio_button_widget.dart';
import 'package:flutter/material.dart';

class SelectYourSubject extends StatefulWidget {
  const SelectYourSubject({super.key});

  @override
  State<SelectYourSubject> createState() => _SelectYourClassState();
}

class _SelectYourClassState extends State<SelectYourSubject> {
  int? _value = 0;

  final containerDeco = BoxDecoration(
    color: Colors.white,
    border: Border.all(color: borderColor),
    borderRadius: BorderRadius.circular(12),
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: containerDeco,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const RadioButtonWigdet(
                    image: 'assets/images/chemistry.png', label: 'Chemistry'),
                Radio(
                    activeColor: Colors.black,
                    value: 1,
                    groupValue: _value,
                    onChanged: (val) {
                      setState(() {
                        _value = val;
                      });
                    })
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: containerDeco,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const RadioButtonWigdet(
                    image: 'assets/images/biology.jpg', label: 'Biology'),
                Radio(
                    activeColor: Colors.black,
                    value: 2,
                    groupValue: _value,
                    onChanged: (val) {
                      setState(() {
                        _value = val;
                      });
                    })
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: containerDeco,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const RadioButtonWigdet(
                    image: 'assets/images/physics.jpg', label: 'Physics'),
                Radio(
                    activeColor: Colors.black,
                    value: 3,
                    groupValue: _value,
                    onChanged: (val) {
                      setState(() {
                        _value = val;
                      });
                    })
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: containerDeco,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const RadioButtonWigdet(
                    image: 'assets/images/math.jpg', label: 'Math'),
                Radio(
                    activeColor: Colors.black,
                    value: 4,
                    groupValue: _value,
                    onChanged: (val) {
                      setState(() {
                        _value = val;
                      });
                    })
              ],
            ),
          ),
        ),
      ],
    );
  }
}
