import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../color.dart';

class Banners extends StatelessWidget {
  const Banners({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // banner 1
          Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Container(
                height: 155,
                width: 358,
                decoration: BoxDecoration(
                  color: AppColor.baseGreen,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        "assets/image/rumah1.png",
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.fromLTRB(30, 30, 0, 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(fontFamily: 'Outfit'),
                              children: [
                                TextSpan(
                                    text: "20% ",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: AppColor.baseWhite)),
                                TextSpan(
                                    text: "Diskon",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: AppColor.baseWhite))
                              ],
                            ),
                          ),
                          const Text(
                            "American House",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: AppColor.baseWhite),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/svg/Calendar.svg'),
                              const SizedBox(width: 5),
                              const Text(
                                "Periode 19 Nov 2023 s/d 15 Des 2023",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                    color: AppColor.baseWhite),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
    
          // banner 2
          Padding(
              padding: const EdgeInsets.only(left: 15, right: 25),
              child: Container(
                height: 155,
                width: 358,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(154, 202, 62, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        "assets/image/rumah1.png",
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.fromLTRB(30, 30, 0, 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(fontFamily: 'Outfit'),
                              children: [
                                TextSpan(
                                    text: "20% ",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: AppColor.baseWhite)),
                                TextSpan(
                                    text: "Diskon",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: AppColor.baseWhite))
                              ],
                            ),
                          ),
                          const Text(
                            "American House",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: AppColor.baseWhite),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/svg/Calendar.svg'),
                              const SizedBox(width: 5),
                              const Text(
                                "Periode 19 Nov 2023 s/d 15 Des 2023",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                    color: AppColor.baseWhite),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
