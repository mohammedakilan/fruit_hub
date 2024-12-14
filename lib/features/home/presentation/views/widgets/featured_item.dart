import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/featured_item_button.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.of(context).size.width * .5;
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 342 / 158,
        child: Stack(
          children: [
            Image.asset(Assets.imagesWatermelonTest),
            Container(
              width: itemWidth,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: svg.Svg(
                      Assets.imagesFeaturedItemBackground,
                    ),
                    fit: BoxFit.fill),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 33.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'عروض العيد',
                      style: TextStyles.regular13.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'خصم 25%',
                      style: TextStyles.bold19.copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    FeaturedItemButton(
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 29,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
