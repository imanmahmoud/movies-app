import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/MyTheme.dart';
import 'package:movies_app/ui/home_screen.dart';
import 'package:movies_app/ui/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 870),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: SplashScreen.routeName,
          routes: {
            HomeScreen.routeName: (_) => HomeScreen(),
            SplashScreen.routeName: (_) => SplashScreen()
          },
          theme: MyTheme.theme,
        );
      },
    );
  }
}
