import 'package:ecom_clean_arch/core/resources/Icon_manager.dart';
import 'package:ecom_clean_arch/core/resources/color_manager.dart';
import 'package:ecom_clean_arch/core/resources/string_manager.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(screenWidth / 3),
              ),
              height: screenWidth / 3,
              width: screenWidth / 4,
            ),
            Positioned(
              bottom: -10,
              child: Container(
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: ColorManager.orangeColor, width: 2),
                    color: ColorManager.whiteColor,
                    borderRadius: BorderRadius.circular(screenWidth / 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            StringManager.add,
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(width: 4),
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: ColorManager.orangeColor,
                            child: Icon(
                              IconManager.addIcon,
                              color: ColorManager.whiteColor,
                            ),
                          )
                        ]),
                  ),
                  // height: 30,
                  width: 100),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          'Orange T-shirt',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          '\$ 100',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
