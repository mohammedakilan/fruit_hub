import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel(super.name, super.email, super.uId);

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      user.displayName ?? '',
      user.email ?? '',
      user.uid,
    );
  }
}
