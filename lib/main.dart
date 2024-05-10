import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginapi/auth/auth.dart';
import 'package:loginapi/gitit/gitit.dart';
import 'package:loginapi/screen/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await getItInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        child:
            MaterialApp(debugShowCheckedModeBanner: false, home: AuthPage()));
  }
}
