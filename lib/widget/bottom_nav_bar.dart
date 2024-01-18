import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../app/modules/home/controllers/home_controller.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex.value,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/Home-outline.svg'),
              activeIcon: SvgPicture.asset('assets/svg/Home-filled.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/building-3.svg'),
              activeIcon: SvgPicture.asset('assets/svg/Building-filled.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/Document-outline.svg'),
              activeIcon: SvgPicture.asset('assets/svg/Document-filled.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/Cart-outline.svg'),
              activeIcon: SvgPicture.asset('assets/svg/Cart-filled.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/User-outline.svg'),
              activeIcon: SvgPicture.asset('assets/svg/User-filled.svg'),
              label: '',
            ),
          ]),
    );
  }
}
