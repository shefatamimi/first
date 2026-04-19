import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'game_screen.dart';
import 'naghamat_screen.dart';
import 'claculater.dart';
 class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body:SafeArea(
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/shefa.jpeg'),
              ),
              Text('shefa tamimi',
                style: TextStyle(
                  fontSize: 30.0,
                  color:Colors.pinkAccent,
                  fontWeight: FontWeight.bold,
                  fontFamily:'Cairo',
                ),
              ),
              Text('Programmer',style: TextStyle(
                color:Colors.black54,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                color: Colors.pink[100],
                child: Row(
                  children: [
                    Icon(Icons.phone,
                      color: Colors.red,
                    ),
                    SizedBox(width:15.0,),
                    Text('+962795934322',
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontFamily: 'Cairo',
                        fontSize: 10.0,

                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding:EdgeInsets.all(10),
                color: Colors.pink[100],
                child: Row(
                  children: [
                    Icon(Icons.email,
                      color: Colors.red,
                    ),
                    SizedBox(width: 15.0,),
                    Text('shefatamimi@gmail.com',
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontFamily:'Cairo',
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),


              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GameScreen (),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(child: Text('Go To Game')),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Naghamatscreen(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(child: Text('Go To Naghamat')),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Claculaterscreen(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(child: Text('Go To calculater')),
                  ),
                ),
              ),




            ],
          ),
        ),
      )



    );
  }
}