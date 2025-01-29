import 'package:ecom_clean_arch/core/resources/string_manager.dart';
import 'package:ecom_clean_arch/core/theme/light_theme.dart';
import 'package:ecom_clean_arch/shop/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: StringManager.appName,
      theme: lightTheme(),
      home: HomeScreen(),
    );
  }
}
