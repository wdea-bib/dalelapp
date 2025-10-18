import 'package:dalelapp/core/utils/app_text_styles.dart';
import 'package:dalelapp/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:dalelapp/features/on_boarding/presention/views/widgets/custom_smoothpageIndecator.dart';
import 'package:flutter/material.dart';

class OnboardingWidgetbody extends StatelessWidget {
  const OnboardingWidgetbody({
    super.key,
    required this.controller,
    this.onPageChanged,
  });
  final PageController controller;
  final Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        physics: BouncingScrollPhysics(),
        controller: controller,
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 290,
                width: 343,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(onBoardingData[index].imagePath),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 25),
              CustomSmoothPageIndecator(controller: controller),
              SizedBox(height: 25),

              Text(
                onBoardingData[index].title,
                style: CustomTextStyles.poppins600style28,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 25),
              Text(
                onBoardingData[index].subTitle,
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
