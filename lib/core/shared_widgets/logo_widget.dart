import 'package:ecom_clean_arch/core/resources/color_manager.dart';
import 'package:ecom_clean_arch/core/resources/string_manager.dart';
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 4), // Add a 4-pixel gap at the top
              Text(
                StringManager.appName,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: Colors.black),
              ),
            ],
          ),
          Text(
            StringManager.appName,
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(color: ColorManager.orangeColor),
          ),
        ],
      ),
    );
  }
}
