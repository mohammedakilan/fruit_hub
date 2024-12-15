import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        color: const Color(0xfff3f5f7),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border_outlined),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Positioned.fill(
            child: Column(
              children: [
                Image.asset(
                  Assets.imagesWatermelonTest,
                ),
                const SizedBox(
                  height: 24,
                ),
                ListTile(
                  title: Text(
                    'بطيخ',
                    textAlign: TextAlign.right,
                    style: TextStyles.semiBold16,
                  ),
                  subtitle: Text.rich(TextSpan(children: [
                    TextSpan(
                      text: '30جنيه',
                      style: TextStyles.bold13.copyWith(
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    TextSpan(
                      text: '/',
                      style: TextStyles.bold13.copyWith(
                        color: AppColors.lightSecondaryColor,
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                      style: TextStyles.semiBold13.copyWith(
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    TextSpan(
                      text: 'كيلو',
                      style: TextStyles.semiBold13.copyWith(
                        color: AppColors.lightSecondaryColor,
                      ),
                    ),
                  ])),
                  trailing: CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
