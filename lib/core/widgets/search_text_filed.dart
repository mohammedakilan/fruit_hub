import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

class SearchTextFiled extends StatelessWidget {
  const SearchTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0x0A000000),
            spreadRadius: 0,
            blurRadius: 9,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0), // لتوفير مساحة داخل الـ icon
            child: SvgPicture.asset(
              Assets.imagesSearchIcon,
              height: 20,
              width: 20,
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8.0), // لتوفير مساحة داخل الـ icon
            child: SvgPicture.asset(
              Assets.imagesFilter,
              height: 20,
              width: 20,
            ),
          ),
          hintText: 'ابحث عن .......',
          hintStyle: TextStyles.regular13.copyWith(
            color: const Color(0xFF949D9E),
          ),
          filled: true,
          fillColor: Colors.white,
          border: _buildBorder(),
          focusedBorder: _buildBorder(),
          enabledBorder: _buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(color: Colors.white, width: 1),
    );
  }
}
