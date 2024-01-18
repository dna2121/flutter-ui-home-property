import 'package:flutter/material.dart';

import '../color.dart';

class ProgressPercentage extends StatelessWidget {
  ProgressPercentage(
      {super.key,
      required this.percent,
      required this.value,
      required this.valueColor});

  double value;
  Color valueColor;
  String percent;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(9, 19, 10, 0.16),
                offset: Offset(0, 5),
                blurRadius: 2.5,
                spreadRadius: 0,
              ),
            ],
          ),
          child: CircularProgressIndicator(
              // strokeWidth: 4,
              strokeCap: StrokeCap.round,
              backgroundColor: AppColor.gray400,
              value: value,
              valueColor: AlwaysStoppedAnimation<Color>(valueColor)),
        ),
        RichText(
            text: TextSpan(
                style: const TextStyle(fontFamily: 'Outfit'),
                children: [
              TextSpan(
                  text: percent,
                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 12)),
              const TextSpan(
                  text: "%",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 5))
            ])),
      ],
    );
  }
}
