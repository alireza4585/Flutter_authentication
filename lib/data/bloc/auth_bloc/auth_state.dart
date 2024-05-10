import 'package:either_dart/either.dart';

abstract class AuthState {}

class AuthInitState extends AuthState {}

class AuthLoadingState extends AuthState {}

// ignore: must_be_immutable
class AuthRequestSuccessState extends AuthState {
  Either<String, String> response;

  AuthRequestSuccessState(this.response);
}
