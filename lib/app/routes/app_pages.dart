import 'package:get/get.dart';

import '../modules/bottomsheet/bindings/bottomsheet_binding.dart';
import '../modules/bottomsheet/views/bottomsheet_view.dart';
import '../modules/building/bindings/building_binding.dart';
import '../modules/building/views/building_view.dart';
import '../modules/cart/bindings/cart_binding.dart';
import '../modules/cart/views/cart_view.dart';
import '../modules/document/bindings/document_binding.dart';
import '../modules/document/views/document_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/user/bindings/user_binding.dart';
import '../modules/user/views/user_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BOTTOMSHEET;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOMSHEET,
      page: () => const BottomsheetView(),
      binding: BottomsheetBinding(),
    ),
    GetPage(
      name: _Paths.DOCUMENT,
      page: () => const DocumentView(),
      binding: DocumentBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.USER,
      page: () => const UserView(),
      binding: UserBinding(),
    ),
    GetPage(
      name: _Paths.BUILDING,
      page: () => const BuildingView(),
      binding: BuildingBinding(),
    ),
  ];
}
