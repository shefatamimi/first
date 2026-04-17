import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Games'),
      ),
      body: ImagePage()
      );
  }
}
class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftimagenumber=1;
  int rightimagenumber=1;
  void changeimage(){
    leftimagenumber=Random().nextInt(8)+1; //0-9
    rightimagenumber=Random().nextInt(8)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(leftimagenumber==rightimagenumber?'you won':
          'Try again',style:TextStyle(
          fontSize: 42.0,
          color: Colors.pinkAccent,
        ) ,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child:GestureDetector(
                    onTap: () {
                      setState(() {
                        changeimage();
                      });
                    },
                  child: Image.asset('lib/images/image-$leftimagenumber.png',width: 100.0,),
                ),
              ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child:GestureDetector(
                    onTap: () {
                      setState(() {
                        changeimage();
                      });
                    },
                    child: Image.asset('lib/images/image-$rightimagenumber.png',width: 100.0,),
                  ),
                ),
              ),

            ],
          ),
        )
      ],
    );
  }
}


