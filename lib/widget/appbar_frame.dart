import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../color.dart';

class AppbarFrame extends StatelessWidget {
  const AppbarFrame({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(
                'assets/image/Avatar.png',
                fit: BoxFit.cover,
                height: 60,
                width: 60,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              children: [
                RichText(
                    text: const TextSpan(
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w600,
                            color: AppColor.baseGreen),
                        children: [
                      TextSpan(text: 'Temukan\n'),
                      TextSpan(text: 'Hunian Impian'),
                    ])),
                const Text(
                  "Agen Properti Terbaik",
                  style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(126, 126, 126, 1)),
                ),
              ],
            ),
            const Spacer(),
            Badge(
              label: const Text('3'),
              child: CircleAvatar(
                  backgroundColor: AppColor.baseWhite,
                  child: SvgPicture.asset('assets/svg/Bell.svg')),
            )
          ],
        ),
      ),
    );
  }
}
