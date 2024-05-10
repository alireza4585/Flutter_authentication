abstract class AuthEvent {}

class AuthLoginRequest extends AuthEvent {
  String username;
  String password;

  AuthLoginRequest(this.username, this.password);
}

class AuthRegisterRequest extends AuthEvent {
  String email;
  String name;
  String password;
  String passwordConfirm;

  AuthRegisterRequest(
      this.email, this.password, this.passwordConfirm, this.name);
}
