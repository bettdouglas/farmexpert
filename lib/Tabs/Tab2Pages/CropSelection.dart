import 'package:flutter/material.dart';

class CropSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Crop Selection'), centerTitle: true,),
      body: Hero(tag: 'CropSelectionHero', child: Container(color: Colors.green,)),
      
    );
  }
}