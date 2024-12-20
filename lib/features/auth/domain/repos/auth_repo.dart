import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/errors/failure.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either< Failure , UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  });

  Future<Either <Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future addUserData({required UserEntity user} );
  Future<UserEntity> getUserData({required String uid} );
  Future saveUserData({required UserEntity user} );

  Future<Either<Failure, UserEntity>> signInWithGoogle();

  Future<Either<Failure, UserEntity>> signInWithFacebook();
}
