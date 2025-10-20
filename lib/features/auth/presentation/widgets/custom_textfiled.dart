import 'package:dalelapp/core/utils/app_colors.dart';
import 'package:dalelapp/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.labletext});
  final String labletext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 24),
      child: TextField(
        decoration: InputDecoration(
          labelText: labletext,
          labelStyle: CustomTextStyles.poppins500style18,
          enabledBorder: getborderStyle(),
          focusedBorder: getborderStyle(),
        ),
      ),
    );
  }
}

OutlineInputBorder getborderStyle() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: BorderSide(color: AppColors.grey),
  );
}
