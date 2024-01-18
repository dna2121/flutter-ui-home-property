import 'package:flutter/material.dart';
import 'package:flutter_ui_home_property/widget/badge_itemsheet.dart';

import '../color.dart';
import 'disabled_itemsheet.dart';

class Bottomsheets extends StatelessWidget {
  const Bottomsheets({
    super.key,
  });

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
          const Text(
            "Tahap Pemesanan",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColor.baseGreen),
          ),
          const Text(
            "Daftar menu tahap pemesanan",
            style: TextStyle(fontSize: 12, color: AppColor.gray200),
          ),
          const SizedBox(height: 15),
          const Divider(color: AppColor.gray100),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              crossAxisSpacing: 15,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                BadgeItemsheet(
                    svgasset: 'assets/svg/bookingfee.svg',
                    text1: 'Booking',
                    text2: 'Fee'),
                DisabledItemsheet(
                    svgasset: 'assets/svg/empty-wallet-time.svg',
                    text1: 'Pesanan',
                    text2: 'Belum Bayar'),
                DisabledItemsheet(
                    svgasset: 'assets/svg/riwayatpesanan.svg',
                    text1: 'Riwayat',
                    text2: 'Pemesanan'),
              ],
            ),
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
