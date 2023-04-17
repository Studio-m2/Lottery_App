
import 'dart:math';

import 'package:flutter/material.dart';





void main() {
  runApp(LotteryApp());
}
class LotteryApp extends StatefulWidget {
  const LotteryApp({Key? key}) : super(key: key);

  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {
  int number=0;
  Random _random=Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body:Material(
          child:Center(
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.center ,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Text("your winning number is $number",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold,color: Colors.pink  ) ,),
                SizedBox(height: 20,),
                Container(
                  height: 250,
                  width: 250,

                  decoration:BoxDecoration(
                    color:Colors.yellowAccent,
                    borderRadius:BorderRadius.circular(40),) ,
                  child:number==7?Column(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.done_all,color: Colors.green,),
                      SizedBox(height: 5,),
                      Text('you have won',style:TextStyle(fontSize:20,fontWeight:FontWeight.bold,),)


                    ],
                  ) :Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.error,color:Colors.red),
                      SizedBox(height: 5,),
                      Text('Better for Next time',style:TextStyle(fontSize:20,fontWeight:FontWeight.bold,),)

                    ],),

                ),
              ],

            ),



          ) ,


        ),

        floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat ,
        floatingActionButton:FloatingActionButton(
          onPressed: (){
            setState(() {

              number=_random.nextInt(8);
            });
          },
          child:Icon(Icons.add,color:Colors.white ,),
          backgroundColor:Colors.pink ,
        ),

      ),

    );
  }
}




