import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Room',style: TextStyle(color: Colors.green),),
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
          Center(child: Text("Loading....",style: TextStyle(color: Colors.white,fontSize: 50),))
        ],
      ),
    );
  }
}