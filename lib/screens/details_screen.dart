import 'package:flutter/material.dart';
import '../../constant.dart';
import '../product.dart';
import '../widget/details/details_body.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          padding: EdgeInsets.only(left: kDefaultPadding),
          icon: Icon(Icons.arrow_back, color: kTextColor),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Details Screen'),
        centerTitle: true,
      ),
      body:DetailsBody(product: products[0]),
    );();
  }
}
