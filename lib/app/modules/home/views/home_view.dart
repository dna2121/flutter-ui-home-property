import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_home_property/app/routes/app_pages.dart';
import 'package:flutter_ui_home_property/color.dart';

import 'package:get/get.dart';

import '../../../../widget/appbar_frame.dart';
import '../../../../widget/banners.dart';
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
              const AppbarFrame(),
              const SizedBox(height: 30),

              // banner
              const Banners(),
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

              // content
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
                onPressed: () => Get.offAllNamed(Routes.HOMEORDER),
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


