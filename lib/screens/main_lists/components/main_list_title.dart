import 'package:flutter/material.dart';

class MainListTitle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('몽글이의 습관일지',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
      ),
      height:80,
      margin: EdgeInsets.only(top: 90,bottom: 15),
    );
  }
}