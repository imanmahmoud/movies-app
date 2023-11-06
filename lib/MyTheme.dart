import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTheme {
  static Color blackColor = Color(0xFF121312);
  static Color yellowColor = Color(0xFFFFBB3B);
  static Color darkGreyColor = Color(0xFF282A28);
  static Color lightGreyColor = Color(0xFF343534);

  static ThemeData theme = ThemeData(
      scaffoldBackgroundColor: blackColor,
      textTheme: TextTheme(
        titleLarge: TextStyle(
            color: Colors.white, fontSize: 22.sp, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(
            color: Colors.white, fontSize: 15.sp, fontWeight: FontWeight.bold),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showUnselectedLabels: true,
          /*backgroundColor:Color(0xFF1A1A1A),*/
          unselectedItemColor: Color(0xFFC6C6C6),
          selectedItemColor: yellowColor,
          selectedIconTheme: IconThemeData(size: 30.sp),
          unselectedIconTheme: IconThemeData(size: 30.sp)));
}
