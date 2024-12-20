import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(
        controller: pageController,
        children: [
          PageViewItem(
            isVisible: true,
            image: Assets.imagesPageViewItem1Image,
            backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "مرحبا بك في",
                  style: TextStyles.bold23,
                ),
                Text(
                  "HUB",
                  style: TextStyles.bold23.copyWith(
                    color: AppColors.secondaryColor,
                  ),
                ),
                Text(
                  "Fruit",
                  style: TextStyles.bold23.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
            subTitle:
                "أكتشف تجرية تسوق، فريدة مع FruitHU8. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
          ),
          const PageViewItem(
              isVisible: false,
              image: Assets.imagesPageViewItem2Image,
              backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
              title: Text(
                "ابحث وتسوق",
                style: TextStyles.bold23,
              ),
              subTitle:
                  "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية"),
        ],
      ),
    );
  }
}
