import 'package:flutter/material.dart';
import 'main.dart';
import 'login.dart';
import 'chate.dart';
import 'sign.dart';
import 'contact.dart';
import 'servies.dart';
import 'careers.dart';

class Careers extends StatefulWidget {
  const Careers({super.key});

  @override
  _CareersState createState() => _CareersState();
}

class _CareersState extends State<Careers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Crystallen Dot",style: TextStyle(color: Colors.green),),
        centerTitle: true,
        backgroundColor: Colors.grey[50],
        elevation: 0.0,
        actions: [
          IconButton(onPressed: (){}, 
          icon: Icon(Icons.list,color: Colors.green,size: 30.0,),
          )
        ],
      ),
      body: 
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
        // Image.asset('assets/download (1).jpeg',fit: BoxFit.cover,),
        Stack(
          children: [
            Image(
              image: AssetImage('assets/download (1).jpeg',),
              fit: BoxFit.fitHeight,
            ),
            Column(
              children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Crystallen()));
                  }, 
                  child: Text("Home",
                  style: TextStyle(color: Colors.green),
                  ),
                  style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.white)),
                  ),
                  SizedBox(width: 2,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Servies()));
                  }, 
                  child: Text("Servies",
                  style: TextStyle(color: Colors.green),),
                  style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.white)
                  ),
                  ),
                  SizedBox(width: 2,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Careers()));
                  }, 
                  child: Text("Careers",
                  style: TextStyle(color: Colors.white),),
                  style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Color.fromARGB(172, 138, 253, 81))
                  ),
                  ),
                  SizedBox(width: 2,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Contact()));
                  },
                  
                  child:  Text("Contact us",
                  style: TextStyle(color: Colors.green),
                  ),
                  style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.white),
                  ),
                  ),
                  SizedBox(width: 5,),
                 ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}