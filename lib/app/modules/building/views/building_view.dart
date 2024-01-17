import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/building_controller.dart';

class BuildingView extends GetView<BuildingController> {
  const BuildingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BuildingView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BuildingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
