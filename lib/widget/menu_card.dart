import 'package:flutter/material.dart';

import 'progress_percentage.dart';

class MenuCard extends StatelessWidget {
  MenuCard(
      {super.key,
      this.positionedBottom,
      this.positionedRight,
      this.positionedTop,
      required this.colorBaseContainer,
      required this.colorShadowContainer,
      required this.colorText1,
      required this.colorText2,
      required this.imageAsset,
      required this.tahap,
      required this.percent,
      required this.value,
      required this.valueColor});

  double? positionedRight;
  double? positionedTop;
  double? positionedBottom;

  Color colorBaseContainer;
  Color colorShadowContainer;
  Color colorText1;
  Color colorText2;

  String imageAsset;
  String tahap;

  String percent;
  double value;
  Color valueColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        decoration: BoxDecoration(
          color: colorBaseContainer,
        ),
        child: Stack(
          children: [
            Positioned(
              right: positionedRight,
              top: positionedTop,
              bottom: positionedBottom,
              child: Container(
                height: 219,
                width: 198,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: colorShadowContainer),
              ),
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(imageAsset)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15),
                  child: RichText(
                      text: TextSpan(
                          style: const TextStyle(fontFamily: 'Outfit'),
                          children: [
                        TextSpan(
                            text: "Tahap\n",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 12,
                                color: colorText1)),
                        TextSpan(
                            text: tahap,
                            style: TextStyle(
                                fontWeight: FontWeight.w500, color: colorText2))
                      ])),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 15, bottom: 15),
                  child: ProgressPercentage(
                    percent: percent,
                    value: value,
                    valueColor: valueColor,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
