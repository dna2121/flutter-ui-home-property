import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../color.dart';

class StepPesanan extends StatelessWidget {
  const StepPesanan({
    super.key,
    required this.activeStep,
  });

  final int activeStep;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      height: 56,
      width: 370,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: EasyStepper(
        activeStep: activeStep,
        activeStepTextColor: AppColor.baseGreen,
        finishedStepTextColor: AppColor.baseGreen,
        internalPadding: 0,
        showLoadingAnimation: false,
        stepRadius: 10,
        // showScrollbar: true,
        disableScroll: true,
        lineStyle: const LineStyle(
            lineType: LineType.normal,
            lineLength: 80,
            unreachedLineType: LineType.dotted),
        steps: [
          EasyStep(
            customStep: CircleAvatar(
              radius: 8,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                  radius: 7, child: SvgPicture.asset('assets/svg/check.svg')),
            ),
            title: 'Pemesanan',
          ),
          EasyStep(
            customStep: CircleAvatar(
              radius: 8,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                  radius: 7, child: SvgPicture.asset('assets/svg/check.svg')),
            ),
            title: 'Administrasi',
          ),
          EasyStep(
            customStep: CircleAvatar(
              radius: 8,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 7,
                child: activeStep >= 2
                    ? SvgPicture.asset('assets/svg/pending.svg')
                    : SvgPicture.asset('assets/svg/pending.svg'),
              ),
            ),
            title: 'Pembangunan',
          ),
          EasyStep(
            customStep: CircleAvatar(
              radius: 8,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 7,
                child: activeStep >= 2
                    ? SvgPicture.asset('assets/svg/belumselesai.svg')
                    : SvgPicture.asset('assets/svg/belumselesai.svg'),
              ),
            ),
            title: 'Serah Terima',
          ),
        ],
      ),
    );
  }
}