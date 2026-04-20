import 'package:first/constant.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import '../widget/home/home_body.dart';

class electrinicscreen extends StatelessWidget {
  const electrinicscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar:homeAppBar(),
      body: HomeBody(),
    );
  } //  build

} //
AppBar homeAppBar(){
  return AppBar(
    title: Text('Electronic Store',
      style:TextStyle(
        fontStyle: FontStyle.italic,
        fontSize: 20.0,
        color: Colors.white,
      ),
    ),
    centerTitle: false,
    backgroundColor: kPrimaryColor,
    actions: [
      IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {}
      ),
    ],
  );
}