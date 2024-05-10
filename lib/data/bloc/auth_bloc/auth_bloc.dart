import 'package:bloc/bloc.dart';
import 'package:loginapi/data/bloc/auth_bloc/auth_event.dart';
import 'package:loginapi/data/bloc/auth_bloc/auth_state.dart';
import 'package:loginapi/data/repository/authentication_repository.dart';
import 'package:loginapi/gitit/gitit.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepository = locator.get();

  AuthBloc() : super(AuthInitState()) {
    on<AuthLoginRequest>((event, emit) async {
      emit(AuthLoadingState());
      var login = await _authRepository.login(event.username, event.password);

      emit(AuthRequestSuccessState(login));
    });
    on<AuthRegisterRequest>((event, emit) async {
      emit(AuthLoadingState());
      var register = await _authRepository.register(
          event.email, event.password, event.passwordConfirm, event.name);

      emit(AuthRequestSuccessState(register));
    });
  }
}
