import 'package:first/constant.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
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
                ProductCard(),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 190,
      //color: Colors.green,
      child: Stack(
          alignment: AlignmentGeometry.bottomCenter,
          children: [
            Container(
                height: 166.0,
                //width: 166.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 25,
                        offset: Offset(0, 15),
                        color: Colors.black26,
                      ),
                    ]
                )
            ),
            Positioned(child: Container(
              height: 160.0,
              width: 160.0,
              child:Image.asset('assets/images/headset.png'),
            ))
          ]
      ),



    );
  }
}
