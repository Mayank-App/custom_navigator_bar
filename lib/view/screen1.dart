import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget{
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
 return const Scaffold(
   body:  Center(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Text("Home page")
       ],
     ),
   ),
 );
  }
}