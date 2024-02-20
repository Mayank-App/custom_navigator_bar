import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget{
  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Account ")
          ],
        ),
      ),
    );
  }
}