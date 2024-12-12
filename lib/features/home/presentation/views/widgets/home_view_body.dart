import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/widgets/search_text_filed.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/custom_home_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: CustomScrollView(
        slivers: [
           SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(
                  height: kTopPadding,
                ),
                CustomHomeAppBar(),
                const SizedBox(
                  height: 16,
                ),
                const SearchTextFiled(),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
           )
        ],
      ),
    );
  }
}
