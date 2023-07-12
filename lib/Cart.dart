import 'package:farmexpert/Tabs/Tab1.dart';
import 'package:farmexpert/models/CartChekout.dart';
import 'package:farmexpert/models/cart-model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cartModel = Provider.of<CartModel>(context);

    var screeHeight = MediaQuery.of(context).size.height;
    var screeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart",
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: <Widget>[] +
                      cartModel.cartItems.entries.map(
                        (mapEntry) {
                          return CartWidget(
                            item: mapEntry.key,
                            count: mapEntry.value,
                          );
                        },
                      ).toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                ),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey),
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            foregroundColor: Colors.orange,
                          ),
                          child: Text(
                            "Checkout",
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontFamily: 'Righteous',
                                fontSize: 18),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CartCheckout()));
                          },
                        ),
                        Text(
                          "Total",
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Righteous',
                              fontSize: 18),
                        ),
                        Text(
                          "Ksh ${cartModel.computeTotal().toString()}",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CartWidget extends StatefulWidget {
  final Item item;
  final int count;

  CartWidget({
    required this.item,
    required this.count,
  });

  @override
  _CartWidgetState createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  @override
  Widget build(BuildContext context) {
    var cartModel = Provider.of<CartModel>(context);
    var screeHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(4.0),
      height: screeHeight * 0.15,
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              height: screeHeight * 0.15,
              child: ClipRRect(
                child: Image.asset(
                  widget.item.imageURL,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            flex: 2,
            child: Container(
              height: screeHeight * 0.2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.item.name,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Mitr",
                        fontStyle: FontStyle.normal),
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          cartModel.decrementOrder(widget.item);
                        },
                      ),
                      Text("${widget.count}"),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          cartModel.addItem(widget.item);
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "${widget.count}",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontFamily: 'Righteous',
                            fontSize: 14),
                      ),
                      Text(" x "),
                      Text(
                        "${widget.item.price}",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontFamily: 'Righteous',
                            fontSize: 14),
                      ),
                      Spacer(),
                      Text(
                        "Ksh ${widget.count * widget.item.price}",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontFamily: 'Righteous',
                            fontSize: 16),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
