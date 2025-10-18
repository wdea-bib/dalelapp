import 'package:dalelapp/core/function/navigate.dart';
import 'package:dalelapp/core/utils/app_strings.dart';
import 'package:dalelapp/core/utils/app_text_styles.dart';
import 'package:dalelapp/core/widgets/custom_btn.dart';
import 'package:dalelapp/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:flutter/material.dart';

class GetButtons extends StatelessWidget {
  const GetButtons({
    super.key,
    required this.currentIndex,
    required this.controller,
  });
  final int currentIndex;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomBtn(
            text: AppStrings.createAccount,
            onPressed: () {
              CustomReplacementNavigate(context, "/signUp");
            },
          ),
          SizedBox(height: 16),
          GestureDetector(
            child: GestureDetector(
              onTap: () {
                CustomReplacementNavigate(context, "/signIn");
              },
              child: Text(
                AppStrings.loginNow,
                style: CustomTextStyles.poppins300style16.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      return CustomBtn(
        text: AppStrings.next,
        onPressed: () {
          controller.nextPage(
            duration: Duration(microseconds: 200),
            curve: Curves.bounceIn,
          );
        },
      );
    }
  }
}
