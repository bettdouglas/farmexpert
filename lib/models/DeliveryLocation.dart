import 'package:flutter/material.dart';

class DeliveryLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screeHeight = MediaQuery.of(context).size.height;
    var screeWidth = MediaQuery.of(context).size.width;
    return Scaffold(appBar: AppBar(title: Text("")),
    body: Container(
      height: screeHeight,
      width: screeWidth,
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(child: TextField(),),
        ),)
      ],),
    ),
      
    );
  }
}