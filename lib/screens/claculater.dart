import 'package:flutter/material.dart';

class Claculaterscreen extends StatefulWidget {
  const Claculaterscreen({super.key});

  @override
  State<Claculaterscreen> createState() => _ClaculaterscreenState();
}

class _ClaculaterscreenState extends State<Claculaterscreen> {
  double num1 = 0;
  double num2 = 0;
  double result = 0;

  String operation = "";
  bool isFirst = true;

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text(
          'Claculater',
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
      ),

      body: SafeArea(
        top: true,
        child: Center(
          child: Column(
            children: [

              // 🔹 first number

                  Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent[100],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black54, width: 2),
                    ),
                    child: TextField(
                      readOnly: true,
                      controller: controller1,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        num1 = double.tryParse(value) ?? 0;
                      },
                      onTap: () {
                        isFirst = true;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'input first number',hintStyle: TextStyle(color: Colors.black54,fontSize: 22),
                      ),
                    ),
                  ),


              // 🔹 second number
              Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent[100],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black54, width: 2),
                    ),
                    child: TextField(
                      readOnly: true,
                      controller: controller2,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        num2 = double.tryParse(value) ?? 0;
                      },
                      onTap: () {
                        isFirst = false;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'input second number',hintStyle: TextStyle(color: Colors.black54,fontSize: 22),
                      ),
                    ),
                  ),


              // 🔹 result
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blueAccent[100],
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black54, width: 2),
                ),
                child: Text(
                  '$result                               ',
                  style: TextStyle(fontSize: 30, color: Colors.black54),
                ),
              ),

              // 🔹 buttons
              SizedBox(height: 20,),
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  // +
                  IconButton(
                    onPressed: () {
                      operation = "+";
                    },
                    icon: Icon(Icons.add,size: 40,),
                  ),

                  // -
                  IconButton(
                    onPressed: () {
                      operation = "-";
                    },
                    icon: Icon(Icons.remove,size: 40,),
                  ),

                  // *
                  IconButton(
                    onPressed: () {
                      operation = "*";
                    },
                    icon: Icon(Icons.close,size: 40,),
                  ),

                  // clear
                  IconButton(
                    onPressed: () {
                      setState(() {
                        num1 = 0;
                        num2 = 0;
                        result = 0;
                        operation = "";
                        controller1.clear();
                        controller2.clear();
                      });
                    },
                    icon: Icon(Icons.change_circle,size: 40,),
                  ),

                ],

              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // numbers
                      for (int i = 1; i < 4; i++)
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (isFirst) {
                                controller1.text += i.toString();
                                //controller1.text = controller1.text + i.toString();
                                num1 =
                                    double.tryParse(controller1.text) ?? 0;
                              } else {
                                controller2.text += i.toString();
                                num2 =
                                    double.tryParse(controller2.text) ?? 0;
                              }
                            });
                          },
                          child: Text('$i',style: TextStyle(fontSize: 40),),
                        ),
                      // /
                      IconButton(
                        onPressed: () {
                          operation = "/";
                        },
                        icon: Icon(Icons.percent,size: 40,),
                      ),


                    ],

                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // numbers
                      for (int i = 4; i < 7; i++)
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (isFirst) {
                                controller1.text += i.toString();
                                num1 =
                                    double.tryParse(controller1.text) ?? 0;
                              } else {
                                controller2.text += i.toString();
                                num2 =
                                    double.tryParse(controller2.text) ?? 0;
                              }
                            });
                          },
                          child: Text('$i',style: TextStyle(fontSize: 40),),
                        ),
                      // =
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (operation == "+") {
                              result = num1 + num2;
                            } else if (operation == "-") {
                              result = num1 - num2;
                            } else if (operation == "*") {
                              result = num1 * num2;
                            } else if (operation == "/") {
                              result = num2 != 0 ? num1 / num2 : 0;
                            }
                          });
                        },
                        icon: Icon(Icons.calculate,size: 40,),
                      ),
                    ]

                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (int i = 7; i < 10; i++)
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (isFirst) {
                                controller1.text += i.toString();
                                num1 =
                                    double.tryParse(controller1.text) ?? 0;
                              } else {
                                controller2.text += i.toString();
                                num2 =
                                    double.tryParse(controller2.text) ?? 0;
                              }
                            });
                          },
                          child: Text('$i',style: TextStyle(fontSize: 40),),

                        ),
                      for (int i = 0; i < 1; i++)
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (isFirst) {
                                controller1.text += i.toString();
                                num1 =
                                    double.tryParse(controller1.text) ?? 0;
                              } else {
                                controller2.text += i.toString();
                                num2 =
                                    double.tryParse(controller2.text) ?? 0;
                              }
                            });
                          },
                          child: Text('$i',style: TextStyle(fontSize: 40),),

                        ),




                    ]
                      //
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}