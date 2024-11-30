import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/widgets/custom_text_filed.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/terms_and_condition.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding,),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CustomTextFromFiled(
                hintText: 'الاسم الكامل', keyboardType: TextInputType.name),
            SizedBox(
              height: 16,
            ),
            CustomTextFromFiled(
                hintText: 'البريد الالكتروني',
                keyboardType: TextInputType.emailAddress),
            SizedBox(
              height: 16,
            ),
            CustomTextFromFiled(
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Color(0xffc9cecf),
                ),
                hintText: 'كلمة السر',
                keyboardType: TextInputType.visiblePassword),
            SizedBox(height: 16),
            TermsAndConditionWidget(),    
          ],
        ),
      ),
    );
  }
}
