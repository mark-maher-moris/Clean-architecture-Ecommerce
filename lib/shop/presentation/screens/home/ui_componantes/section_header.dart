import 'package:ecom_clean_arch/core/resources/asset_manager.dart';
import 'package:ecom_clean_arch/core/resources/color_manager.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  SectionHeader({super.key, required this.text, this.trilling});
  String text;
  String? trilling;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: ColorManager.orangeColor,
                ),
          ),
          if (trilling != null) ...[
            const Spacer(),
            Text(
              trilling!,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: ColorManager.greyColor,
                    fontFamily: FontManager.normalFont,
                  ),
            ),
          ]
        ],
      ),
    );
  }
}
