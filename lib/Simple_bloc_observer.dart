import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('Change = $change');
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('Close = $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('Create = $bloc');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint('Error = $bloc');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
  
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    bloc;
  }
}
