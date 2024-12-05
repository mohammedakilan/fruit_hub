part of 'signup_cubit.dart';

@immutable
abstract class SignupState {}

class SignupInitial extends SignupState {}

class SignupLoading extends SignupState {}

class SignupSuccess extends SignupState {
  final UserEntity userEntity;

  SignupSuccess(this.userEntity);
}

class SignupError extends SignupState {
  final String message;

  SignupError({required this.message});
}
