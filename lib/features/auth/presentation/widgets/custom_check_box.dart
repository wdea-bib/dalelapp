import 'package:dalelapp/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CuustomCheckbox extends StatefulWidget {
  const CuustomCheckbox({super.key});

  @override
  State<CuustomCheckbox> createState() => _CuustomCheckboxState();
}

class _CuustomCheckboxState extends State<CuustomCheckbox> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: value,
      side: BorderSide(color: AppColors.grey),
      onChanged: (newvalue) {
        setState(() {
          value = newvalue!;
        });
      },
    );
  }
}
