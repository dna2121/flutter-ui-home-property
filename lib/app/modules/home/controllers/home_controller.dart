import 'package:get/get.dart';

class HomeController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
    update();
  }

  var percent = 0.5.obs;

  void updatePercent(double newPercent) {
    percent.value = newPercent;
  }

}
