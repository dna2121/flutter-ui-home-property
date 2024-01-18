import 'package:flutter/material.dart';

import '../color.dart';

// ignore: must_be_immutable
class ProgressPercentage extends StatelessWidget {
  ProgressPercentage(
      {super.key,
      required this.percent,
      required this.value,
      required this.valueColor,
      required this.bgcolor,
      required this.percentColor});

  double value;
  Color valueColor;
  Color bgcolor;
  Color percentColor;
  String percent;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: bgcolor,
            boxShadow: const [
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
                style: TextStyle(fontFamily: 'Outfit', color: percentColor),
                children: [
              TextSpan(
                  text: percent,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 12)),
              const TextSpan(
                  text: "%",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 5))
            ])),
      ],
    );
  }
}
