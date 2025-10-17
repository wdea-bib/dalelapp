import 'package:dalelapp/core/utils/app_assets.dart';

import 'package:dalelapp/core/utils/app_text_styles.dart';
import 'package:dalelapp/features/on_boarding/presention/views/widgets/custom_smoothpageIndecator.dart';
import 'package:flutter/material.dart';

class OnboardingWidgetbody extends StatelessWidget {
  OnboardingWidgetbody({super.key});
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        physics: BouncingScrollPhysics(),
        controller: _controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 290,
                width: 343,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.assetsImagesOnBoarding1),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 25),
              CustomSmoothPageIndecator(controller: _controller),
              SizedBox(height: 25),

              Text(
                "hello to  bsdbdhd hdhd hdkj djkdd kdj;q;ljfk nchghbryhfcnbna",
                style: CustomTextStyles.poppins600style28,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
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
