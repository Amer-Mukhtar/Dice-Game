import 'package:flutter/material.dart';
import 'dart:math';

void main()
{
  runApp(mine());
}

class mine extends StatelessWidget {
  const mine({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:  AppBar(
          backgroundColor: Colors.yellow,
          title: Center(child: Text('Dice Game',style: TextStyle(fontSize: 30),)),

        ),
        body: bod(),
      ),
    );
  }
}



class bod extends StatefulWidget {
  const bod({super.key});

  @override
  State<bod> createState() => _bodState();
}

class _bodState extends State<bod> {
  int change=2;
  int change2=1;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(

              children:<Widget> [
                Expanded(
                  child:TextButton(onPressed:(){
                    setState(() {
                      change=Random().nextInt(6)+1;
                      print('$change');
                    });
                    print('button pressed');
                  } ,
                      child: Image(image: AssetImage('images/die$change.png'),
                      )
                  ),
                ),
                Expanded(
                  child:TextButton(onPressed:(){
                    setState(() {
                      change2=Random().nextInt(6)+1;
                      print('$change2');
                    });
                    print('button 2 pressed');
                  } ,
                      child: Image(image: AssetImage('images/die$change2.png'),
                      )
                  ),
                ),

              ],
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(top: 30,left: 20,right: 20),
              width: double.infinity,
              child: TextButton(onPressed: (){setState(() {
                change2=Random().nextInt(6)+1;
                change=Random().nextInt(6)+1;

              }
              );
              }, child: Text('Throw',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),)),
            )
          ],
        ),

      ),
    );
  }
}
