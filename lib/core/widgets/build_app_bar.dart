 import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/notification_widget.dart';

AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      actions: [Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: NotificationWidget(),
      )],

      title: Text('الاكثر مبيعا',style: TextStyles.bold19,),
      elevation: 0,
    
    );
  }
