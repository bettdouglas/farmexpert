import 'package:flutter/material.dart';

class Tab3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight,
      width: screenWidth,
      child: Icon(Icons.account_circle, size: screenHeight*0.2, color: Colors.blue,),
    );
  }
}