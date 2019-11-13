import 'package:farmexpert/models/DeliveryLocation.dart';
import 'package:flutter/material.dart';

class CartCheckout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screeHeight = MediaQuery.of(context).size.height;
    var screeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Checkout",
          style: TextStyle(
              fontStyle: FontStyle.normal,
              fontFamily: 'Righteous',
              fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: screeHeight,
        width: screeWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DeliveryLocation()));
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.phone),
                    Text(
                      "Pay With M-Pesa",
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Righteous',
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {},
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.credit_card),
                    Text(
                      "Pay With Credit Card",
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Righteous',
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
