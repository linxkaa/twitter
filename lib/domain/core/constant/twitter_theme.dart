import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter/domain/core/constant/color_constant.dart';

class TwitterTheme {
  TwitterTheme._();
  static ThemeData theme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: ColorConstant.whiteColor,
    brightness: Brightness.light,
    primaryColor: ColorConstant.black,
    accentColor: Colors.white,
    textTheme: textTheme,
    primaryTextTheme: textTheme.apply(
      bodyColor: ColorConstant.black,
      displayColor: ColorConstant.black,
      decorationColor: ColorConstant.black,
    ),
    appBarTheme: AppBarTheme(color: Colors.black, actionsIconTheme: const IconThemeData(color: Colors.black)),
    accentIconTheme: IconThemeData(color: Colors.black),
    iconTheme: IconThemeData(color: Colors.black),
    accentTextTheme: textTheme.apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
      decorationColor: Colors.white,
    ),
  );

  static TextTheme textTheme = TextTheme(
    headline1: GoogleFonts.poppins().copyWith(fontSize: 69.sp, fontWeight: FontWeight.bold, letterSpacing: 0.63.sp),
    headline2: GoogleFonts.poppins().copyWith(fontSize: 63.sp, fontWeight: FontWeight.bold, letterSpacing: 0.63.sp),
    headline3: GoogleFonts.poppins().copyWith(fontSize: 56.sp, fontWeight: FontWeight.bold, letterSpacing: 0.63.sp),
    headline4: GoogleFonts.poppins().copyWith(fontSize: 50.sp, fontWeight: FontWeight.bold, letterSpacing: 0.63.sp),
    headline5: GoogleFonts.poppins().copyWith(fontSize: 44.sp, fontWeight: FontWeight.bold, letterSpacing: 0.63.sp),
    headline6: GoogleFonts.poppins().copyWith(fontSize: 38.sp, fontWeight: FontWeight.bold, letterSpacing: 0.63.sp),
    bodyText1: GoogleFonts.poppins().copyWith(fontSize: 38.sp, fontWeight: FontWeight.w700, letterSpacing: 0.5.sp),
    bodyText2: GoogleFonts.poppins().copyWith(fontSize: 38.sp, letterSpacing: 0.5.sp),
    subtitle1: GoogleFonts.poppins(fontSize: 36.sp, fontWeight: FontWeight.w700, letterSpacing: 0.5.sp),
    subtitle2: GoogleFonts.poppins(fontSize: 36.sp, letterSpacing: 0.5.sp),
    caption: GoogleFonts.poppins(fontSize: 30.sp, letterSpacing: 0.5.sp),
    button: GoogleFonts.poppins(fontSize: 35.sp, letterSpacing: 0.63.sp, fontWeight: FontWeight.bold),
    overline: GoogleFonts.poppins(
      fontSize: 28.sp,
      letterSpacing: 0.63.sp,
    ),
  ).apply(
    bodyColor: Colors.black,
    displayColor: Colors.black,
    decorationColor: Colors.black,
  );
}
