import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Naghamatscreen extends StatelessWidget {
  const Naghamatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Naghamat'),
      ),
      body: Center(
        child: Text(
          'Naghamat Screen 🎵',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}