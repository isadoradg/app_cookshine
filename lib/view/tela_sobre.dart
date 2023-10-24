// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import "package:app_cookshine/util/constraints.dart";
import "package:flutter/material.dart";

class TelaSobre extends StatefulWidget {
  const TelaSobre({super.key});

  @override
  State<TelaSobre> createState() => _TelaSobreState();
}

class _TelaSobreState extends State<TelaSobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("COOKSHINE", style: TextStyle( color: Colors.black), textAlign: TextAlign.center,),
        leading: Image.asset('lib/images/icon_kitchen_gradient.png',height: 30,width: 30,),
        backgroundColor: Color.fromARGB(255, 246, 244, 243),
        
        actions: [
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/cookshine'),
            child: Row(children: [
              Text("HOME", style: TextStyle( color: Colors.black),)
            ],)),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/sobre'),
            child: Row(children: [
              Text("SOBRE", style: TextStyle( color: Colors.black),)
            ],)),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/login'),
            child: Row(children: [
              Text("LOGIN", style: TextStyle( color: Colors.black),)
            ],)),    
        ],
      ),

      body: sobre,

      
    );  
  }
}