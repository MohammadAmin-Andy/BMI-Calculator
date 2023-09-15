import 'package:flutter/material.dart';

class LeftShape extends StatelessWidget {
  const LeftShape({Key? key, this.width = 0}) : super(key: key);
  final double width;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
