import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_home_property/app/modules/building/views/building_view.dart';
import 'package:flutter_ui_home_property/app/modules/cart/views/cart_view.dart';
import 'package:flutter_ui_home_property/app/modules/document/views/document_view.dart';
import 'package:flutter_ui_home_property/app/modules/home/views/home_view.dart';
import 'package:flutter_ui_home_property/app/modules/user/views/user_view.dart';

import 'package:get/get.dart';

import '../controllers/bottomsheet_controller.dart';

class BottomsheetView extends GetView<BottomsheetController> {
  const BottomsheetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Obx(
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
                  activeIcon:
                      SvgPicture.asset('assets/svg/Building-filled.svg'),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/svg/Document-outline.svg'),
                  activeIcon:
                      SvgPicture.asset('assets/svg/Document-filled.svg'),
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
        ),
        body: Obx(
          () => IndexedStack(
            index: controller.tabIndex.value,
            children: const [
              HomeView(),
              BuildingView(),
              DocumentView(),
              CartView(),
              UserView()
            ],
          ),
        ));
  }
}
