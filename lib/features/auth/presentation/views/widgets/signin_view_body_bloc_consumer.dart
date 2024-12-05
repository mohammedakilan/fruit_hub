import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/widgets/custom_modal_progress_hud.dart';
import 'package:fruit_hub/features/auth/presentation/cubits/signin/signin_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/signin_view_body.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {},
      builder: (context, state) {
        return CustomModalProgressHud(
            isLoading: state is SigninLoading ? true : false,
            child: const signinViewBody());
      },
    );
  }
}
