import 'package:ecom_clean_arch/core/resources/Icon_manager.dart';
import 'package:ecom_clean_arch/core/resources/color_manager.dart';
import 'package:ecom_clean_arch/core/shared_widgets/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: ColorManager.transparent,
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              IconManager.menuIcon,
              color: Colors.black,
            ),
          ),
          LogoWidget(),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              IconManager.cartIcon,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              IconManager.profileIcon,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
