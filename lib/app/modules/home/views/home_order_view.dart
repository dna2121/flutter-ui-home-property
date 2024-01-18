// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_home_property/app/modules/home/controllers/home_controller.dart';
import 'package:flutter_ui_home_property/widget/appbar_frame.dart';

import 'package:get/get.dart';

import '../../../../color.dart';
import '../../../../widget/banners.dart';
import '../../../../widget/bottom_nav_bar.dart';
import '../../../../widget/menu_card.dart';
import '../../../../widget/slider_content1.dart';
import '../../../../widget/slider_content2.dart';
import '../../../../widget/slider_content3.dart';

class HomeOrderView extends GetView<HomeController> {
  const HomeOrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var current = 0.obs;
    // final CarouselController carouselController = CarouselController();

    return Scaffold(
      bottomNavigationBar: BottomNavBar(controller: controller),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              const AppbarFrame(),
              const SizedBox(height: 30),

              // banner
              const Banners(),
              const SizedBox(height: 30),

              // pesanan terbaru
              Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
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
                      Padding(
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
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: SvgPicture.asset('assets/svg/rightarrow.svg'),
                  )
                ],
              ),

              const SizedBox(height: 20),

              // slider
              Column(
                children: [
                  SizedBox(
                    height: 190,
                    child: PageView(
                      onPageChanged: (value) {
                        current.value = value;
                      },
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: SliderContent1(),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: SliderContent2(),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: SliderContent3(),
                        ),
                      ],
                    ),
                  ),

                  // indicator
                  Padding(
                      padding: const EdgeInsets.fromLTRB(25, 18, 25, 0),
                      child: SizedBox(
                        height: 3,
                        child: ListView.separated(
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 4),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          itemBuilder: ((context, index) {
                            return Obx(
                              () => Container(
                                width: 15,
                                decoration: BoxDecoration(
                                  color: current.value == index
                                      ? AppColor.baseGreen
                                      : AppColor.gray100,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            );
                          }),
                        ),
                      ))
                ],
              ),

              const SizedBox(height: 25),

              // menu
              Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Menu",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: AppColor.baseGreen,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Daftar menu transaksi",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(158, 158, 158, 1)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: SvgPicture.asset('assets/svg/Category.svg'),
                  )
                ],
              ),

              const SizedBox(height: 20),

              // transaction menu
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 15,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    MenuCard(
                      colorBaseContainer: AppColor.baseGreen,
                      colorShadowContainer: const Color.fromRGBO(47, 69, 48, 1),
                      colorText1: AppColor.baseWhite,
                      colorText2: AppColor.baseWhite,
                      positionedRight: -75,
                      positionedTop: -30,
                      imageAsset: 'assets/image/pemesanan.png',
                      tahap: 'Pemesanan',
                      percent: '100',
                      value: 1,
                      valueColor: Colors.red,
                    ),
                    MenuCard(
                      colorBaseContainer: AppColor.baseWhite,
                      colorText1: AppColor.baseGreen,
                      colorText2: AppColor.baseGreen,
                      colorShadowContainer:
                          const Color.fromRGBO(248, 248, 248, 1),
                      positionedBottom: -100,
                      imageAsset: 'assets/image/administrasi.png',
                      tahap: 'Administrasi',
                      percent: '50',
                      value: 0.5,
                      valueColor: AppColor.baseGreen,
                    ),
                    Stack(children: [
                      MenuCard(
                        colorBaseContainer: AppColor.baseWhite,
                        colorText1: AppColor.baseGreen,
                        colorText2: AppColor.baseGreen,
                        colorShadowContainer:
                            const Color.fromRGBO(248, 248, 248, 1),
                        positionedBottom: -100,
                        imageAsset: 'assets/image/pembangunan.png',
                        tahap: 'Pembangunan',
                        percent: '0',
                        value: 0,
                        valueColor: AppColor.gray400,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Colors.grey.withOpacity(0.2),
                        ),
                      )
                    ]),
                    Stack(children: [
                      MenuCard(
                        colorBaseContainer: AppColor.baseWhite,
                        colorText1: AppColor.baseGreen,
                        colorText2: AppColor.baseGreen,
                        colorShadowContainer:
                            const Color.fromRGBO(248, 248, 248, 1),
                        positionedBottom: -100,
                        imageAsset: 'assets/image/akad.png',
                        tahap: 'Akad & Serah Terima',
                        percent: '0',
                        value: 0,
                        valueColor: AppColor.gray400,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Colors.grey.withOpacity(0.2),
                        ),
                      )
                    ]),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
