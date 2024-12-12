import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Container(
        padding: EdgeInsets.all(12),
        decoration: ShapeDecoration(shape: 
        OvalBorder(),
        color: Color(0xffeef8ed)
        ),
        child: SvgPicture.asset(
          Assets.imagesNotification,
        ),
      ),
      leading: SvgPicture.asset(
        Assets.imagesProfileImage,
      ),
      title: Text(
        'صباخ الخير !..',
        textAlign: TextAlign.right,
        style: TextStyles.regular16.copyWith(
          color: Color(0xff949d9e),
        ),
      ),
      subtitle: Text(
        'محمد عقيلان',
        textAlign: TextAlign.right,
        style: TextStyles.bold16,
      ),
    );
  }
}
