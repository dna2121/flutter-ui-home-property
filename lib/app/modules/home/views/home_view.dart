import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_home_property/color.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),

              // app bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/image/Avatar.png',
                          fit: BoxFit.cover,
                          height: 60,
                          width: 60,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        children: [
                          RichText(
                              text: const TextSpan(
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Outfit',
                                      fontWeight: FontWeight.w600,
                                      color: AppColor.baseGreen),
                                  children: [
                                TextSpan(text: 'Temukan\n'),
                                TextSpan(text: 'Hunian Impian'),
                              ])),
                          const Text(
                            "Agen Properti Terbaik",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(126, 126, 126, 1)),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Stack(
                        children: [
                          CircleAvatar(
                              backgroundColor: AppColor.baseWhite,
                              child: SvgPicture.asset('assets/svg/Bell.svg')),
                          Positioned(
                              bottom: 18,
                              left: 22,
                              child: Container(
                                padding: const EdgeInsets.all(4),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(255, 92, 92, 1),
                                ),
                                child: const Text('3',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    )),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // banner
              SingleChildScrollView(
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
              ),
              const SizedBox(height: 30),

              // pesanan terbaru
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Pesanan Terbaru",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColor.baseGreen,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Daftar pesanan terbaru anda",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(158, 158, 158, 1)),
                  ),
                ),
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SvgPicture.asset('assets/svg/Norder.svg'),
                  SvgPicture.asset('assets/svg/Fly.svg'),
                ],
              ),
              const SizedBox(height: 20),
              const Text("Pesanan Kosong",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.baseGreen)),
              const Text(
                "Ayo tambahkan pesanan baru",
                style: TextStyle(fontSize: 12, color: AppColor.gray200),
              ),
              const SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {},
                icon: SvgPicture.asset('assets/svg/Search.svg'),
                label: const Text(
                  "Eksplor Properti",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(196, 50),
                    backgroundColor: AppColor.baseGreen),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
