import 'package:flutter/material.dart';

class RightShape extends StatelessWidget {
  const RightShape({Key? key, this.wight = 0}) : super(key: key);
  final double wight;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 40,
          width: wight,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 8, 79, 10),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
