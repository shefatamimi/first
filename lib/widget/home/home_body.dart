import 'package:first/constant.dart';
import 'package:first/widget/home/product_cart.dart';
import 'package:flutter/material.dart';
import '../../screens/details_screen.dart';
import '../details/details_body.dart';
import 'product_cart.dart';
import 'package:first/product.dart'; // 👈 هذا المهم


class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: kDefaultPadding / 2),

          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],
                    Press: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const DetailsScreen()));
                    },
                  ),
                  ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
