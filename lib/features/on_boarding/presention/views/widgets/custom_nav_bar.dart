import 'package:dalelapp/core/utils/app_strings.dart';
import 'package:dalelapp/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class Customnavbar extends StatelessWidget {
  const Customnavbar({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.centerRight,
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          AppStrings.skip,
          style: CustomTextStyles.poppins300style16.copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
