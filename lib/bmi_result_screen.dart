import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;

  BMIResultScreen({
    required this.result,
    required this.isMale,
    required this.age
  });



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
          ),
        ),
        title:Text(
            'BMI Result'
        ) ,
        centerTitle: true,
        backgroundColor: Colors.white10,
      ),
      body: Center(
        child: Column(


            children:[
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text('Your current BMI is',
                  style: TextStyle(
                    fontSize:15.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0),
                  child: Container(
                    width: double.infinity,

                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Column(


                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text('Normal',
                            style: TextStyle(
                              fontSize:23.0,
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text('$result',
                            style: TextStyle(
                              fontSize: 65.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text('Your BMI is normal, Good job ',
                            style: TextStyle(
                              fontSize:15.0,
                              color: Colors.grey,

                            ),
                          ),



                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0,),
                      color: Colors.white10,


                    ),


                  ),
                ),
              ),
              SizedBox(
                height: 90.0,
              ),
              Container(
                width: double.infinity,
                color: Colors.green,
                child: MaterialButton(
                  onPressed: (){
                    Navigator.pop(context);
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
                    'RECALCULATE',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )


            ]
        ),

      ),
    );
  }
}
