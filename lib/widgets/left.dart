import 'package:flutter/material.dart';

class LeftScreen extends StatelessWidget {
  const LeftScreen ({Key? key, required this.barWidth}) : super(key: key);
  final double barWidth;

  @override
  Widget build(BuildContext context) {
    //We are returning a row because it to be in a horizontal order.
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: barWidth,
          //Now we decorate the container
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: Colors.yellow
          ),
        ),
      ],
    );
  }
}
