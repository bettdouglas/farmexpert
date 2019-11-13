import 'package:flutter/material.dart';

class CapitalManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Capital Management'),
        centerTitle: true,
      ),
      body: Hero(
          tag: 'CapitalManagementHero',
          child: Container(
            color: Colors.orange,
          )),
    );
  }
}
