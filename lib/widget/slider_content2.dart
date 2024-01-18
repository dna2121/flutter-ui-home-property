import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../color.dart';
import 'dotted_divider.dart';

class SliderContent2 extends StatelessWidget {
  const SliderContent2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      height: 190,
      decoration: BoxDecoration(
        color: AppColor.baseWhite,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                "#881726478124",
                style: TextStyle(color: AppColor.baseGreen, fontSize: 12),
              ),
              const Spacer(),
              Container(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColor.baseLightGreen,
                  ),
                  child: const Text(
                    "Komersil",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ))
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Image.asset(
                'assets/image/bukitraya.png',
                height: 85,
                width: 100,
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/svg/house.svg'),
                        const SizedBox(width: 5),
                        const Flexible(
                          child: Text(
                            "Bukit Raya Residance",
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColor.baseGreen,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset('assets/svg/location.svg'),
                        const SizedBox(width: 5),
                        const Flexible(
                          child: Text(
                            "Jaguar, Kavling A1, Blok D No. 4",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColor.baseGreen,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset('assets/svg/greenCalendar.svg'),
                        const SizedBox(width: 5),
                        const Flexible(
                          child: Text(
                            "25/12/2023, 09:00",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColor.baseGreen,
                            ),
                          ),
                        ),
                      ],
                    ),
                    RichText(
                        text: const TextSpan(
                            style: TextStyle(
                                fontFamily: 'Outfit',
                                color: AppColor.baseGreen),
                            children: [
                          TextSpan(text: 'Rp ', style: TextStyle(fontSize: 12)),
                          TextSpan(
                              text: '985.799.300',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700)),
                        ])),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const DottedDivider(),
          const SizedBox(height: 10),
          Row(
            children: [
              SvgPicture.asset('assets/svg/dollar.svg'),
              RichText(
                  text: const TextSpan(
                      style: TextStyle(
                          fontFamily: 'Outfit',
                          color: AppColor.baseGreen,
                          fontSize: 12),
                      children: [
                    TextSpan(text: "  Denda Rp "),
                    TextSpan(
                        text: "8.550.000",
                        style: TextStyle(fontWeight: FontWeight.w700))
                  ])),
              const Spacer(),
              Container(
                  padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColor.baseGreen,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/svg/Danger.svg'),
                      const Text(
                        " Terlambat 7 Hari",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
