import 'package:flutter/material.dart';
class ProductImage extends StatelessWidget {
  final String image;
  const ProductImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: size.width * 0.7,
          width: size.width * 0.7,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
        Image.asset(
          image,
          height: size.width * 0.6,
        ),
      ],
    );
  }
}