// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../color.dart';

class Bottomsheets extends StatelessWidget {
  Bottomsheets(
      {super.key,
      required this.tahapan,
      required this.daftarmenu,
      this.children});

  String tahapan;
  String daftarmenu;
  List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppColor.baseWhite,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20),
          Container(
            height: 5,
            margin: const EdgeInsets.symmetric(horizontal: 150),
            decoration: BoxDecoration(
                color: AppColor.gray100,
                borderRadius: BorderRadius.circular(10)),
          ),
          const SizedBox(height: 20),
          Text(
            tahapan,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColor.baseGreen),
          ),
          Text(
            daftarmenu,
            style: const TextStyle(fontSize: 12, color: AppColor.gray200),
          ),
          const SizedBox(height: 15),
          const Divider(color: AppColor.gray100),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 20,
              shrinkWrap: true,
              crossAxisSpacing: 15,
              physics: const NeverScrollableScrollPhysics(),
              children: children ?? [],
            ),
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
