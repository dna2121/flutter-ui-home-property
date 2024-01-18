// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_ui_home_property/widget/progress_percentage.dart';

import '../color.dart';

class ProgressItemsheet extends StatelessWidget {
  ProgressItemsheet(
      {super.key,
      required this.text1,
      required this.text2,
      required this.valuepercent,
      required this.percent});

  String text1;
  String text2;

  String percent;
  double valuepercent;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          ProgressPercentage(
            percent: percent,
            value: valuepercent,
            valueColor: Colors.red,
            bgcolor: AppColor.baseGreen,
            percentColor: AppColor.baseWhite,
          ),
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
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: const TextStyle(
                fontSize: 10,
                color: AppColor.baseGreen,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
