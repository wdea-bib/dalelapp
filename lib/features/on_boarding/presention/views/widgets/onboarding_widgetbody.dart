import 'package:dalelapp/core/utils/app_assets.dart';

import 'package:dalelapp/core/utils/app_text_styles.dart';
import 'package:dalelapp/features/on_boarding/presention/views/widgets/custom_smoothpageIndecator.dart';
import 'package:flutter/material.dart';

class OnboardingWidgetbody extends StatelessWidget {
  OnboardingWidgetbody({super.key});
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(Assets.assetsImagesOnBoarding2),
              SizedBox(height: 25),
              CustomSmoothPageIndecator(controller: _controller),
              SizedBox(height: 25),

              Text(
                "hello to  bsdbdhd hdhd hdkj djkdd kdj;q;ljfk nchghbryhfcnbna",
                style: CustomTextStyles.poppins600style28,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25),
              Text(
                "hello to  bsdbdhd hdhd hdkj djkdd kdj;q;ljfk nchghbryhfcnbna",
                style: CustomTextStyles.poppins400style12,
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
