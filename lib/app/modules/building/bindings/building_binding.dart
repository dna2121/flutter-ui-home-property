import 'package:get/get.dart';

import '../controllers/building_controller.dart';

class BuildingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BuildingController>(
      () => BuildingController(),
    );
  }
}
