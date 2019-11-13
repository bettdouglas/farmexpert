import 'package:flutter/material.dart';

class ProfitCulculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profit Culculator'),
        centerTitle: true,
      ),
      body: Hero(
          tag: 'ProfitCulculatorHero',
          child: Container(
            color: Colors.red,
          )),
    );
  }
}
