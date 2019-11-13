import 'package:farmexpert/Cart.dart';
import 'package:farmexpert/Tabs/Tab1.dart';
import 'package:farmexpert/Tabs/Tab2.dart';
import 'package:farmexpert/Tabs/Tab3.dart';
import 'package:farmexpert/models/cart-model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => CartModel(),
      child: MaterialApp(
        theme: ThemeData(primaryColor: Colors.white),
        debugShowCheckedModeBanner: false,
        title: 'Farm Expert',
        home: FarmExpertHome(),
      ),
    );
  }
}

class FarmExpertHome extends StatefulWidget {
  @override
  _FarmExpertHomeState createState() => _FarmExpertHomeState();
}

class _FarmExpertHomeState extends State<FarmExpertHome> {
  List<Item> cartItems = [];

  @override
  Widget build(BuildContext context) {
    var cartModel = Provider.of<CartModel>(context);

    var screenHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Container(
            child: Icon(
              Icons.menu,
              size: screenHeight * 0.04,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8),
              child: IconButton(
                  icon: Icon(Icons.shopping_cart, color: Colors.orange,),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0, top: 15.0),
              child: Text(
                "${cartModel.cartItems.keys.length}",
                style: TextStyle(fontSize: 20, color: Colors.orange),
              ),
            )
          ],
          centerTitle: true,
          title: Text(
            'Farm Expert',
            style: TextStyle(
                fontStyle: FontStyle.normal,
                fontFamily: 'Righteous',
                fontSize: 24),
          ),
          bottom: TabBar(
            indicatorColor: Colors.green,
            tabs: <Widget>[
              Icon(Icons.home, color: Colors.green),
              Icon(Icons.bookmark, color: Colors.green),
              Icon(Icons.info, color: Colors.green)
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Tab1(),
            Tab2(),
            Tab3(),
          ],
        ),
      ),
    );
  }
}
