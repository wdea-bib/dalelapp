import 'package:dalelapp/core/utils/app_colors.dart';

import 'package:dalelapp/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, this.color, required this.text});
  final Color? color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
        ),
        child: Text(
          text,
          style: CustomTextStyles.poppins500style24.copyWith(
            fontSize: 18,
            color: AppColors.offWhite,
          ),
        ),
      ),
    );
  }
}
