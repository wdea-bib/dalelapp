import 'package:dalelapp/core/utils/app_strings.dart';
import 'package:dalelapp/core/widgets/custom_btn.dart';
import 'package:dalelapp/features/on_boarding/presention/views/widgets/custom_nav_bar.dart';
import 'package:dalelapp/features/on_boarding/presention/views/widgets/onboarding_widgetbody.dart';
import 'package:flutter/material.dart';

class OnBoardingViews extends StatelessWidget {
  const OnBoardingViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 40),
              customnavbar(),
              OnboardingWidgetbody(),
              SizedBox(height: 30),
              CustomBtn(text: AppStrings.next),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
