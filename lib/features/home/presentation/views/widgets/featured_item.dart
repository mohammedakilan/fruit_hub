import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/featured_item_button.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Image.asset(Assets.imagesWatermelonTest),
          Container(
            child: Column(
              children: [
                Text(
                  'عروض العيد',
                  style: TextStyles.regular13.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  'خصم 25%',
                  style: TextStyles.bold19.copyWith(color: Colors.white),
                ),
                FeaturedItemButton(onPressed: () {
                  
                },),
              ],
            ),
          )
        ],
      ),
    );
  }
}
