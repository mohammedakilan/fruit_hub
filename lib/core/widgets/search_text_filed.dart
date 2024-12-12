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
            color: Color(0x0a000000),
            spreadRadius: 0,
            blurRadius: 9,
            offset: const Offset(0, 2),
          )
        ]
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: SizedBox(
              height: 20,
      
            child: Center(child: SvgPicture.asset(Assets.imagesSearchIcon,  ))),
            suffixIcon: SizedBox(
              height: 20,
              child: Center(child: SvgPicture.asset(Assets.imagesFilter))),
            hintText: 'ابحث عن .......',
            hintStyle: TextStyles.regular13.copyWith(
              color: const Color(0xff949d9e),
            ),
            filled: true,
            fillColor:  Colors.white,
            border: buildBorder(),
            focusedBorder: buildBorder(),
            enabledBorder: buildBorder()),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(color: Colors.white, width: 1),
    );
  }
}
