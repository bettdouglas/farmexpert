import 'package:flutter/material.dart';

class SeasonForecast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Season Forecast'), centerTitle: true,),
      body: Hero(tag: 'SeasonForecastHero', child: Container(color: Colors.blue,)),
      
    );
  }
}