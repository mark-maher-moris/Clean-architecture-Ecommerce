import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        height: 50,
        width: 50,
        color: Colors.grey,
      ),
    );
  }
}
