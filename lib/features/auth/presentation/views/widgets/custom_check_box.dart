import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_images.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox(
      {super.key, required this.isChecked, required this.onChecked});

  final bool isChecked;
  final ValueChanged<bool> onChecked;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChecked(!isChecked);
      },
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          height: 24,
          width: 24,
          decoration: ShapeDecoration(
              color: isChecked ? AppColors.primaryColor : Colors.grey[300],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(
                  color: isChecked ? Colors.transparent : Colors.white,
                  width: 1.50,
                ),
              )),
          child: isChecked
              ? Image.asset(Assets.imagesCheckPng) 
              : const SizedBox()),
    );
  }
}
