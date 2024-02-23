import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow[100],
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ask Me Anything',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
        ),
          backgroundColor: Colors.blue,
        ),
        body: MagicBall(),
      ),
    );
  }
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  // variables and functions
  int imageNumber = 1;
  void ImageNumberGen(){
    setState(() {
      imageNumber = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(

      child: TextButton(onPressed: (){
        ImageNumberGen();
      },
          child: Image.asset('images/ball$imageNumber.png')
      ),
    );
  }
}
