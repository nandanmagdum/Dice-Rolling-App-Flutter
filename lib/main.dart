import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: dice(),
    );
  }
}

// ignore: camel_case_types
class dice extends StatefulWidget {
  const dice({super.key});

  @override
  State<dice> createState() => _diceState();
}

// ignore: camel_case_types
class _diceState extends State<dice> {

  int dicenum = 6;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Roll and Enjoy!", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: Container( margin: const EdgeInsets.all(10),child: Center(child: TextButton(onPressed: (){
          setState(() {
            dicenum = changedice();
          });
        } ,child: Image.asset('images/dice$dicenum.png'))))
      ),
    );
  }
}

int changedice(){
    return Random().nextInt(6)+1;
}
