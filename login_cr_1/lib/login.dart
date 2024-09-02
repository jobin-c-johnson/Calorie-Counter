import 'dart:ffi';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login',style: TextStyle(color: Colors.green),),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, 
          icon: const Icon(Icons.list,color: Colors.green,size: 30.0,),
          )
        ],
      ),
      body: Stack(
        children: [
          Image.asset('assets/download (1).jpeg',fit: BoxFit.cover,),
          const Padding(
            padding:  EdgeInsets.fromLTRB(25,70,0,0),
            child: SizedBox(
              height: 400,
              width: 350,
              child: Card(
                color: Color.fromARGB(95, 255, 255, 255),
                child: Padding(
                  padding:  EdgeInsets.fromLTRB(15,10,0,0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text(' Name : '),
                      SizedBox(height: 10,),
                      SizedBox(
                        height: 100,
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "User Name",
                            labelStyle: TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(172, 85, 255, 0),width: 1)
                            )
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(' Password : '),
                      SizedBox(height: 10,),
                      SizedBox(
                        height: 100,
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Password",
                            labelStyle: TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(172, 85, 255, 0),width: 1)
                            )
                          ),
                        ),
                      ),
                      SizedBox(height: 2,),
                      Center(child: Text('Login With ',style: TextStyle(color: Colors.white,fontSize: 20),)),
                      SizedBox(height: 2,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.mail,color: Colors.white,),
                          SizedBox(width: 5,),
                          Icon(Icons.facebook_rounded,color: Colors.white,),
                          SizedBox(width: 5,),
                          Icon(Icons.snapchat,color: Colors.white,)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Center(child: Text("Loading...."))
        ],
      ),
    );
  }
}