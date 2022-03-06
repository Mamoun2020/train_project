
import 'dart:math';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../bmi_result/bmi_result_screen.dart';

class BmiScreen extends StatefulWidget{
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  // Color? color = Colors.grey[400];
  bool isMale = true;
  double height = 120.0;
  int age = 18;
  int weight = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        backgroundColor: Colors.black87,

        title:Text(
          'BMI Calculator',
          style: TextStyle(
            color: Colors.white,

          ),
        ),
          centerTitle: true,
      ),
      body:Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children:[
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState((){
                          // color = Colors.blue;
                          isMale = true;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Image(
                            image:AssetImage(
                              'assets/images/male.png',
                            ),
                            height:90.0,
                            width:90.0,
                          ),
                          SizedBox(
                            height:15.0,
                          ),
                          Text(
                            'MALE',
                            style:TextStyle(
                            fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                          ),
                          ),
                            ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color:isMale?Colors.blue : Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width:20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap:(){
                        setState(
                            (){
                              isMale = false;
                            });
                         },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Image(
                              image:AssetImage(
                                'assets/images/female.png',
                              ),
                              height:90.0,
                              width:90.0,
                            ),
                            SizedBox(
                              height:15.0,
                            ),
                            Text(
                                'FEMALE',
                                style:TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                )
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: !isMale ? Colors.blue : Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.symmetric(
                horizontal:20.0,
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:
                  [
                    Text(
                        'HEIGHT',
                        style:TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        )
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children:[
                        Text(
                            '${height.round()}',
                            style:TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                            )
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                            'CM',
                            style:TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                      ],
                    ),
                    Slider(
                      value:height,
                      max:220.0,
                      min:80.0,
                      onChanged:(value){
                        setState(
                                (){height = value;
                        });
                        // print(value.round());
                      },
                    ),
                  ],
                ),
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(
                    10.0,
                  ),
                  color:Colors.grey[400],
                ),
              ),
            ),

          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children:[
                  Expanded(
                    child: Container(
                      child: Column(
                        children:[
                          Text(
                            'AGE',
                            style:TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                              '${age}',
                              style:TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              )
                          ),
                          Row(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children:[
                              FloatingActionButton(onPressed: (){
                                setState(
                                    (){
                                      age--;
                                    }
                                );
                              },
                                child:Icon(
                                  Icons.remove,
                                ),
                                mini:true,
                                heroTag: 'age-',
                              ),
                              FloatingActionButton(onPressed: (){
                                  setState(
                                      (){
                                        age++;
                                      }
                                  );
                              },
                                child:Icon(
                                  Icons.add,
                                ),
                                mini:true,
                                heroTag:'age+',
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(
                          10.0,
                        ),
                        color:Colors.grey[400],
                      ),
                    ),
                  ),
                  SizedBox(
                    width:20.0,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children:[
                          Text(
                            'WIEGHT',
                            style:TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                              '${weight}',
                              style:TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              )
                          ),
                          Row(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children:[
                              FloatingActionButton(onPressed: (){
                                setState((){weight--;});

                              },
                                child:Icon(
                                  Icons.remove,
                                ),
                                mini:true,
                                heroTag:'weight-',
                              ),
                              FloatingActionButton(onPressed: (){
                                setState((){weight++;});
                              },
                                child:Icon(
                                  Icons.add,
                                ),
                                mini:true,
                                heroTag:'weight+',
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(
                          10.0,
                        ),
                        color:Colors.grey[400],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
          ),
          Container(
            width:double.infinity,
            color:Colors.blue,
            child: MaterialButton(
              height: 50.0,
                onPressed:(){
                  var result = weight / pow(height / 100,2);
                  print(result.round());
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BMIResultScreen(
                        age:age,
                        isMale:isMale,
                        result:result.round()
                    ) ,
                    ),
                  );
                },
              child:Text(
                'CALCULATE',
                style:TextStyle(
                  color:Colors.white,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

