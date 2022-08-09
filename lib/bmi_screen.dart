
import 'dart:math';

import 'package:bmicalculator/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget{
  _BmiScreenState createState() => _BmiScreenState();
}
class _BmiScreenState extends State<BmiScreen> {

  bool isMale =true;
  double height=120.0 ;
  double weight =60;
  int age =20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',

        ),
        centerTitle: true,
        backgroundColor: Colors.white10,

      ),
      body: Column(

        children: [

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Expanded(
                child: Row(
                  children:
                  [
                    Expanded(
                      child: GestureDetector(
                        onTap:(){
                          setState(()
                          {
                            isMale =true;
                          }
                          );
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 60.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),

                              Text(
                                'MALE',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.white
                                ),

                              )
                            ],

                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0,),
                            color: isMale ? Colors.green :Colors.white10,

                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(()
                          {
                            isMale =false;
                          }
                          );
                        },
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.female,
                                    size: 60.0,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),

                                  Text(
                                    'FEMALE',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white
                                    ),

                                  )
                                ],

                              ),

                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0,),
                            color: isMale ?  Colors.white10:Colors.green,


                          ), ),
                      ),
                    ),


                  ],

                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('${height.round()}',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),),
                        Text('CM',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),),

                      ],
                    ),
                    Slider(
                      value: height,
                      max:220.0,
                      min: 80.0,
                      activeColor: Colors.green,
                      inactiveColor: Colors.grey,
                      onChanged: (value) {
                        setState((){
                          height=value;
                        });
                      },)

                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0,),
                  color: Colors.white10,

                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'WEIGHT',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('${weight.round()}',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),),
                        Text('Kg',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),),

                      ],
                    ),
                    Slider(
                      value: weight,
                      max:120.0,
                      min: 40.0,
                      activeColor: Colors.green,
                      inactiveColor: Colors.grey,
                      onChanged: (value) {
                        setState((){
                          weight=value;
                        });
                      },)

                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0,),
                  color: Colors.white10,

                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: double.infinity,
            color: Colors.green,
            child: MaterialButton(
              onPressed: (){
                double result = weight / pow(height /100,2);
                print(result.round());
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BMIResultScreen(
                      result: result.round(),
                      age: age,
                      isMale: isMale,

                    ),
                  ),
                );
              },
              height: 50.0,
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.black,
    );
  }


}
