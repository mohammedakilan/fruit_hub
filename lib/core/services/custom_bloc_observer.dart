import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class CustomBlocObserver extends BlocObserver {
  bool isDebugMode = true;

  void log(String type, BlocBase bloc, Object? info) {
    if (isDebugMode) {
      debugPrint('$type -- Bloc: ${bloc.runtimeType}, Info: $info');
    }
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    log('🔵 Event', bloc, event);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('🟡 Change', bloc, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log('🔁 Transition', bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    log('🔴 Error', bloc, error);
  }
}
