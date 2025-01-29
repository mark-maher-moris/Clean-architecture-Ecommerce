import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(100),
        bottomRight: Radius.circular(100),
      ),
      child: Drawer(),
    );
  }
}
