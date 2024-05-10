import 'package:either_dart/either.dart';
import 'package:loginapi/data/datasource/authentication_datasource.dart';
import 'package:loginapi/gitit/gitit.dart';
import 'package:loginapi/util/exception.dart';

abstract class IAuthRepository {
  Future<Either<String, String>> register(
      String username, String password, String passwordConfirm, String name);

  Future<Either<String, String>> login(String username, String password);
}

class AuthenticationRepository extends IAuthRepository {
  final IAuthenticationDatasource _datasource = locator.get();
  @override
  Future<Either<String, String>> login(String username, String password) async {
    try {
      String token = await _datasource.login(username, password);
      if (token.isNotEmpty) {
        return Right('login please');
      } else {
        return Left('error');
      }
    } on ApiException catch (ex) {
      return Left('${ex.message}');
    }
  }

  @override
  Future<Either<String, String>> register(String username, String password,
      String passwordConfirm, String name) async {
    try {
      await _datasource.register(username, password, passwordConfirm, name);
      return Right('Done');
    } on ApiException catch (ex) {
      return Left(ex.message ?? 'Error');
    }
  }
}
