import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        currentPage = pageController.page!.round();
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnBoardingPageView(
          pageController: pageController,
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            color:currentPage ==1 ?AppColors.primaryColor : AppColors.primaryColor.withOpacity(.5),
            activeColor: AppColors.primaryColor,

          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Visibility(
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,          
          visible: currentPage == 1 ? true : false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: CustomButton(
              text: 'ابدأ الأن',
              onPressed: () {},
            ),
          ),
        ),
        const SizedBox(
          height: 43,
        ),
      ],
    );
  }
}
