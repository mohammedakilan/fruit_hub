import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/helpersFunction/build_erorr_snack_bar.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_text_filed.dart';
import 'package:fruit_hub/features/auth/presentation/cubits/features/signup/presentation/cubit/signup/signup_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/have_account.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/password_filed.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/terms_and_condition.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> fromKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    late String name, email, password;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kHorizontalPadding,
        ),
        child: Form(
          autovalidateMode: autovalidateMode,
          key: fromKey,
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              CustomTextFromFiled(
                  onSaved: (value) {
                    name = value!;
                  },
                  hintText: 'الاسم الكامل',
                  keyboardType: TextInputType.name),
              const SizedBox(
                height: 16,
              ),
              CustomTextFromFiled(
                  onSaved: (value) {
                    email = value!;
                  },
                  hintText: 'البريد الالكتروني',
                  keyboardType: TextInputType.emailAddress),
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
              TermsAndConditionWidget(
                onTermsAccepted: (value) {
                  isTermsAccepted = value;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                text: 'انشاء حساب جديد',
                onPressed: () {
                  if (isTermsAccepted == false) {
                    buildErrorSnackBar(
                      context,
                      'يجب الموافقة على الشروط والأحكام',
                    );
                  } else {
                    if (fromKey.currentState!.validate()) {
                      fromKey.currentState!.save();
                      context
                          .read<SignupCubit>()
                          .createUserWithEmailAndPassword(
                              email: email, password: password, name: name);
                    } else {
                      setState(
                        () {
                          autovalidateMode = AutovalidateMode.always;
                        },
                      );
                    }
                  }
                },
              ),
              const SizedBox(
                height: 26,
              ),
              const HaveAnAccountWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
