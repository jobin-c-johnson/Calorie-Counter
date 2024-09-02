import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign in',style: TextStyle(color: Colors.green),),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, 
          icon: Icon(Icons.list,color: Colors.green,size: 30.0,),
          )
        ],
      ),
      body: Stack(
        children: [
          Image.asset('assets/download (1).jpeg',fit: BoxFit.cover,),
          Center(child: Text("Loading....",style: TextStyle(color:Colors.white,fontSize: 50),))
        ],
      ),
    );
  }
}