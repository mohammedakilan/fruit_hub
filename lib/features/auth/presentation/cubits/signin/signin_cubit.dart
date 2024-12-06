import 'package:bloc/bloc.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruit_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());
  final AuthRepo authRepo;
  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    emit(SigninLoading());

    var result = await authRepo
        .signInWithEmailAndPassword(email: email, password: password);
    result.fold(
      (failure) => emit(SigninFailure(message: failure.message)),
      (UserEntity) => emit(SigninSuccess(UserEntity)),
    );
  }

  Future<void> signInWithGoogle() async {
    emit(SigninLoading());

    var result = await authRepo.signInWithGoogle();
    result.fold(
      (failure) => emit(SigninFailure(message: failure.message)),
      (UserEntity) => emit(SigninSuccess(UserEntity)),
    );
  }
}
