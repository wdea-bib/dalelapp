import 'package:dalelapp/core/utils/app_strings.dart';
import 'package:dalelapp/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class customnavbar extends StatelessWidget {
  const customnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.centerRight,
      child: Text(
        AppStrings.skip,
        style: CustomTextStyles.poppins300style16.copyWith(
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
