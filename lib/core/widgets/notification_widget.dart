import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/utils/app_images.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(shape: 
      OvalBorder(),
      color: Color(0xffeef8ed)
      ),
      child: SvgPicture.asset(
        Assets.imagesNotification,
      ),
    );
  }
}
