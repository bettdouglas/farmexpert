import 'package:flutter/material.dart';

class Production extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Production'),centerTitle: true,),
      body: Hero(tag: 'ProductionHero', child: Container(color: Colors.purple,)),
      
    );
  }
}