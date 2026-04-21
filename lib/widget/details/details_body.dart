import 'package:first/constant.dart';
import 'package:first/product.dart';
import 'package:flutter/material.dart';

class DetailsBody extends StatelessWidget {
  final Product product;

  const DetailsBody({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Stack(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                // 🖼 صورة المنتج
                ProductImage(image: product.image),

                // 🎯 دوائر الألوان
                Positioned(
                  bottom: 15,
                  child: Row(
                    children: [
                      buildDot(color: Colors.blue),
                      buildDot(color: Colors.red),
                      buildDot(color: Colors.green),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 🔵 widget للدوائر
  Widget buildDot({required Color color}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        color: kTextLightColor,
        shape: BoxShape.circle,
        border: Border.all(color: kTextLightColor),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

class ProductImage extends StatelessWidget {
  final String image;

  const ProductImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.center,
      children: [
        // ⚪ الدائرة البيضاء
        Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
          height: size.width * 0.7,
          width: size.width * 0.7,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),

        // 🖼 الصورة
        Image.asset(
          image,
          height: size.width * 0.6,
        ),
      ],
    );
  }
}