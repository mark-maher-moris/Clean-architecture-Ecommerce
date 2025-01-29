import 'package:ecom_clean_arch/core/resources/asset_manager.dart';
import 'package:ecom_clean_arch/core/resources/color_manager.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme() => ThemeData(
      fontFamily: AssetManager.normalFont,
      primarySwatch: MaterialColor(
        ColorManager.orangeColor.value,
        <int, Color>{
          50: ColorManager.orangeColor,
        },
      ),
      scaffoldBackgroundColor: ColorManager.whiteColor,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
    );
