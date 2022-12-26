import 'dart:ffi';

import 'package:bantuone/auth_service.dart';
import 'package:bantuone/core/constants/screenutil_size.dart';
import 'package:bantuone/core/constants/theme_data.dart';
import 'package:bantuone/core/provider_setup.dart';
import 'package:bantuone/core/route/route_constants.dart';
import 'package:bantuone/core/route/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: designSize,
      minTextAdapt: true,
      builder: (context, child) => MultiProvider(
        providers: providers,
        child: GetMaterialApp(
          home: AuthService().handleAuthState(),
          debugShowCheckedModeBanner: false,
          title: 'bantuone',
          theme: themeData,
          onGenerateRoute: CustomRouter.generateRoute,
          initialRoute: home,
        ),
        ),
    );
  }
}
