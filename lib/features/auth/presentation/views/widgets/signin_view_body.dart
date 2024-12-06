import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_text_filed.dart';
import 'package:fruit_hub/features/auth/presentation/cubits/signin/signin_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/dont_have_an_account_widget.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/password_filed.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/social_login_button.dart';

class signinViewBody extends StatefulWidget {
  const signinViewBody({super.key});

  @override
  State<signinViewBody> createState() => _signinViewBodyState();
}

class _signinViewBodyState extends State<signinViewBody> {
  late String email, password;
  final AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                CustomTextFromFiled(
                  hintText: 'البريد الالكتروني',
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (value) {
                    email = value!;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                PasswordFiled(
                  onSaved: (value) {
                    password = value!;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'نسيت كلمة المرور ؟',
                      style: TextStyles.semiBold13.copyWith(
                        color: AppColors.lightPrimaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 33,
                ),
                CustomButton(
                  text: 'تسجيل الدخول',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      context.read<SigninCubit>().signInWithEmailAndPassword(
                          email: email, password: password);
                      print('email: $email, password: $password');
                    }
                  },
                ),
                const SizedBox(
                  height: 33,
                ),
                const DontHaveAnAccountWidget(),
                const SizedBox(
                  height: 33,
                ),
                const OrDivider(),
                const SizedBox(
                  height: 16,
                ),
                SocialLoginButton(
                  image: 'assets/images/google_icon.svg',
                  title: 'تسجيل بواسطة جوجل',
                  onPressed: () {
                    context.read<SigninCubit>().signInWithGoogle();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                SocialLoginButton(
                  image: 'assets/images/appl_icon.svg',
                  title: 'تسجيل بواسطة أبل',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 16,
                ),
                SocialLoginButton(
                  image: 'assets/images/facebook_icon.svg',
                  title: 'تسجيل بواسطة فيسبوك',
                  onPressed: () {
                    context.read<SigninCubit>().signInWithFacebook();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
