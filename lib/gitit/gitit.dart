import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:loginapi/data/datasource/authentication_datasource.dart';
import 'package:loginapi/data/repository/authentication_repository.dart';
import 'package:loginapi/util/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

var locator = GetIt.instance;
Future<void> getItInit() async {
  await _initComponents();
  await _initDatasoruces();

  _initRepositories();
}

Future<void> _initComponents() async {
  locator.registerSingleton<Dio>(DioProvider.createDioWithoutHeader());
  locator.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());
}

Future<void> _initDatasoruces() async {
  locator
      .registerFactory<IAuthenticationDatasource>(() => AuthenticationRemote());
}

void _initRepositories() {
  locator.registerFactory<IAuthRepository>(() => AuthenticationRepository());
}
