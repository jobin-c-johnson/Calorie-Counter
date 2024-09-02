import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  home: Scaffold(appBar: AppBar(
    title: Center(
      child:Text(
        "Crystallineed",
        style: TextStyle(
          letterSpacing: 1.0,
        ),
        ),),
    backgroundColor: Colors.green,
  ),
  body:Center(
   child:Image.asset('assets/download (1).jpeg', fit: BoxFit.cover,),
  //Text("Login page will ready soon....",
  //  style: TextStyle(
  //   fontSize: 25.0,
  //  ),
   
  //  ),
   ),
   floatingActionButton: FloatingActionButton(
    onPressed: (){},
    child: Text("Chat",
    style: TextStyle(
      fontWeight: FontWeight.bold
    ),
    ),
    backgroundColor: Colors.green,
    ),
   ),
  )
);