import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/core/errors/exception.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString() } , ${e.code}');

      if (e.code == 'weak-password') {
        throw CustomException(message: 'كلمة المرور ضعيفة جدًا.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
            message: 'الحساب موجود بالفعل لهذا البريد الإلكتروني.');
      }else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'لا يوجد اتصال بالإنترنت.');

      } else {
        throw CustomException(message: 'حدث خطأ، يرجى المحاولة لاحقًا.');
      }
    } catch (e) {
      log('Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()}');

      throw CustomException(message: 'حدث خطأ، يرجى المحاولة لاحقًا.');
    }
  }

  Future<User> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()} , ${e.code}');

      if (e.code == 'user-not-found') {
        throw CustomException(message: 'البريد الالكتروني او كلمة المرور غير صحيحة.');
      } else if (e.code == 'wrong-password') {
        throw CustomException(message: 'البريد الالكتروني او كلمة المرور غير صحيحة.');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'لا يوجد اتصال بالإنترنت.');
      } else {
        throw CustomException(message: 'حدث خطأ، يرجى المحاولة لاحقًا.');
      }
    } catch (e) {
      log('Exception in FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()}');

      throw CustomException(message: 'حدث خطأ، يرجى المحاولة لاحقًا.');
    }
  }
}
