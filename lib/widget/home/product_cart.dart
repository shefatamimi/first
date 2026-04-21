import 'package:flutter/material.dart';
import 'package:first/constant.dart';
import '../../product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard( {
    super.key,
    required this.product,
    required this.itemIndex,
    required this.Press
  });

  final int itemIndex;
  final Product product;
  final Function Press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: kDefaultPadding / 2,
      ),
      height: 190,
      child: InkWell(
        onTap: () => Press(),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // الخلفية البيضاء
            Container(
              height: 166,
              //width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 25,
                    offset: Offset(0, 15),
                    color: Colors.black26,
                  ),
                ],
              ),
            ),

            // الصورة
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: 160,
                width: 160,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // النصوص
            Positioned(
              top: 30,
              left: 160,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(product.subTitle),

                    const Spacer(),

                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: kSecondaryColor,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 25,
                            offset: Offset(0, 15),
                            color: Colors.black26,
                          )
                        ],
                      ),
                      child: Text('price: \$${product.price}'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}