import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Naghamatscreen extends StatelessWidget {
  const Naghamatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();

    return Scaffold(
      appBar: AppBar(
        title: Text('Naghamat'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              GestureDetector(
                onTap: () async {
                  await player.play(
                    AssetSource('sound/music-1.mp3'),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 80,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Piano",
                          style: TextStyle(
                            fontSize: 40.0,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ),
                        ),
                        Icon(Icons.music_note_sharp),
                      ],
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () async {
                  await player.play(
                    AssetSource('sound/music-2.mp3'),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 80,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Guitar",
                          style: TextStyle(
                            fontSize: 40.0,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ),
                        ),
                        Icon(Icons.music_note_sharp),
                      ],
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () async {
                  await player.play(
                    AssetSource('sound/music-3.mp3'),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 80,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Violin",
                          style: TextStyle(
                            fontSize: 40.0,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ),
                        ),
                        Icon(Icons.music_note_sharp),
                      ],
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () async {
                  await player.play(
                    AssetSource('sound/music-4.mp3'),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 80,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Drums",
                          style: TextStyle(
                            fontSize: 40.0,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ),
                        ),
                        Icon(Icons.music_note_sharp),
                      ],
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () async {
                  await player.play(
                    AssetSource('sound/music-5.mp3'),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 80,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Flute",
                          style: TextStyle(
                            fontSize: 40.0,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                      Icon(Icons.music_note_sharp),
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: () async {
                  await player.play(
                    AssetSource('sound/music-7.mp3'),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 80,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Nature Sound",
                        style: TextStyle(
                          fontSize: 40.0,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                        ),
                      ),

                      Icon(Icons.music_note_sharp),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}