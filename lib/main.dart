import 'package:bmicalculator/bmi_screen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp()); //run the application insidethere is a widjet
}
// two main widjet
// stateless
// statful
//class MyApp
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiScreen(),
    );
  }


}