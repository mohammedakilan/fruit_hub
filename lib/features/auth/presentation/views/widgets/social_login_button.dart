import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton(
      {super.key, this.onPressed, required this.image, required this.title});
  final void Function()? onPressed;
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Color(0xffdcdede),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: onPressed,
      child: ListTile(
        visualDensity:
            const VisualDensity(vertical: VisualDensity.minimumDensity),
        leading: SvgPicture.asset(
          image,
          width: 24,
          height: 24,
        ),
        title: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyles.semiBold16,
        ),
      ),
    );
  }
}
