// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/utils/app_images.dart';

class CustomButtonNavigationBar extends StatelessWidget {
  const CustomButtonNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          shadows: [
            BoxShadow(
              color: Color(0x19000000),
              spreadRadius: 0,
              blurRadius: 25,
              offset: Offset(0, -2),
            ),
          ]),
      child: InActiveItem(image: Assets.imagesVuesaxOutlineHome),
    );
  }
}

class InActiveItem extends StatelessWidget {
  const InActiveItem({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      image,
    );
  }
}

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({super.key, required this.isSelected});
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem()
        : InActiveItem(image: Assets.imagesVuesaxBoldHome);
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
