import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:satudata/utils/MLColors.dart';
import 'package:nb_utils/nb_utils.dart';

class AppThemeData {
  AppThemeData._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: whiteColor,
    primaryColor: appColorPrimary,
    primaryColorDark: appColorPrimary,
    hoverColor: Colors.white54,
    dividerColor: viewLineColor,
    fontFamily: GoogleFonts.openSans().fontFamily,
    appBarTheme: AppBarTheme(
      color: white,
      iconTheme: IconThemeData(color: textPrimaryColor),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.black
    ),
    colorScheme: ColorScheme.light(
      primary: appColorPrimary,
      error: Colors.red, // Error color for light theme
    ),
    cardTheme: CardTheme(color: Colors.white),
    cardColor: Colors.white,
    iconTheme: IconThemeData(color: textPrimaryColor),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: whiteColor
    ),
    textTheme: TextTheme(
      labelLarge: TextStyle(color: appColorPrimary), // Mengganti button
      titleLarge: TextStyle(color: textPrimaryColor), // Mengganti headline6
      bodySmall: TextStyle(color: textSecondaryColor), // Mengganti subtitle2
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  ).copyWith(
    pageTransitionsTheme: PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.linux: OpenUpwardsPageTransitionsBuilder(),
        TargetPlatform.macOS: OpenUpwardsPageTransitionsBuilder(),
      }
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: appBackgroundColorDark,
    highlightColor: appBackgroundColorDark,
    appBarTheme: AppBarTheme(
      color: appBackgroundColorDark,
      iconTheme: IconThemeData(color: blackColor),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light
      ),
    ),
    primaryColor: color_primary_black,
    dividerColor: Color(0xFFDADADA).withOpacity(0.3),
    primaryColorDark: color_primary_black,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.white
    ),
    hoverColor: Colors.black12,
    fontFamily: GoogleFonts.openSans().fontFamily,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: appBackgroundColorDark
    ),
    primaryTextTheme: TextTheme(
      titleLarge: TextStyle(color: Colors.white), // Mengganti headline6
    ),
    cardTheme: CardTheme(color: cardBackgroundBlackDark),
    cardColor: appSecondaryBackgroundColor,
    iconTheme: IconThemeData(color: whiteColor),
    textTheme: TextTheme(
      labelLarge: TextStyle(color: color_primary_black), // Mengganti button
      titleLarge: TextStyle(color: whiteColor), // Mengganti headline6
      bodySmall: TextStyle(color: Colors.white54), // Mengganti subtitle2
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: ColorScheme.dark(
      primary: appBackgroundColorDark, 
      onPrimary: cardBackgroundBlackDark,
      secondary: whiteColor,
      error: Color(0xFFCF6676), // Error color for dark theme
    ),
  ).copyWith(
    pageTransitionsTheme: PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.linux: OpenUpwardsPageTransitionsBuilder(),
        TargetPlatform.macOS: OpenUpwardsPageTransitionsBuilder(),
      }
    ),
  );
}