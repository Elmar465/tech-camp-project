// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Square extends StatelessWidget{
  final String child;
  const Square({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          image: DecorationImage(
            image: NetworkImage("https://cdn.pixabay.com/photo/2016/10/11/21/43/geometric-1732847__340.jpg")
          )
        ),
        alignment: Alignment.center,       
        height: 200.0,
        // color: Colors.blue[200],
        child: Text(child, style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold,color: Colors.white),
        ),

      ),
    );
  }

}