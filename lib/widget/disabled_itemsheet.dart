
// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../color.dart';

class DisabledItemsheet extends StatelessWidget {
  DisabledItemsheet(
      {super.key,
      required this.svgasset,
      required this.text1,
      required this.text2});

  String text1;
  String text2;
  String svgasset;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
        decoration: const BoxDecoration(
          color: AppColor.ellips,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(70),
              topLeft: Radius.circular(13),
              bottomLeft: Radius.circular(13),
              bottomRight: Radius.circular(13)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
                backgroundColor: AppColor.baseGreen,
                child: SvgPicture.asset(svgasset)),
            const Spacer(),
            Text(
              text1,
              style: const TextStyle(
                  fontSize: 10,
                  color: AppColor.baseGreen,
                  fontWeight: FontWeight.w300),
            ),
            Text(
              text2,
              style: const TextStyle(
                  fontSize: 10,
                  color: AppColor.baseGreen,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Colors.grey.shade100.withOpacity(0.2),
        ),
      )
    ]);
  }
}