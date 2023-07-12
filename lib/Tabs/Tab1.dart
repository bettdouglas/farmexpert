import 'package:farmexpert/models/News.dart';
import 'package:farmexpert/models/NewsPage.dart';
import 'package:farmexpert/models/NewsWidget.dart';
import 'package:farmexpert/models/cart-model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Tab1 extends StatefulWidget {
  const Tab1({
    Key? key,
  }) : super(key: key);
  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Welcome!',
                    style: TextStyle(fontSize: 24, fontFamily: 'Mitr'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'News',
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Righteous',
                        fontSize: 18),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => NewsPage(),
                        ),
                      );
                    },
                    child: Container(
                      child: Text(
                        'View More',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontFamily: 'Righteous',
                            fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: screenHeight * 0.2,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: NewsList.newsList
                    .map((f) => NewsContainer(news: f))
                    .toList(),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text(
                        "The Perfect Seedlings For The Best Produce",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Mitr',
                            color: Colors.green),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ImageBanner()
          ],
        ),
      ),
    );
  }
}

class NewsContainer extends StatelessWidget {
  final News news;

  const NewsContainer({
    Key? key,
    required this.news,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => NewsWidget(
                  news: news,
                )));
      },
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                news.imgSrc,
                fit: BoxFit.fitHeight,
                width: screenWidth * 0.4,
                height: screenHeight * 0.2,
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            left: 2,
            child: Container(
              color: Colors.white70,
              width: screenWidth * 0.45,
              height: screenHeight * 0.08,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  news.newsTitle,
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Righteous',
                      fontSize: 16),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

List<Item> items = [
  Item(name: 'Cabbage', imageURL: 'images/cabbage.jpg', price: 50),
  Item(name: 'Strawberries', imageURL: 'images/strawberry2.jpg', price: 100),
  Item(name: 'Tomatoes', imageURL: 'images/tomatoes.jpg', price: 80),
  Item(name: 'Ornions', imageURL: 'images/ornions.jpg', price: 50),
  Item(name: 'Broccoli', imageURL: 'images/Brocoli.jpg', price: 70),
  Item(name: 'Cucumber', imageURL: 'images/cucumber.jpg', price: 100),
  Item(
      name: 'Capsicum Annuum',
      imageURL: 'images/Capsicum_annuum.jpg',
      price: 200),
];

class Item {
  String name, imageURL;
  double price;
  Item({
    required this.name,
    required this.imageURL,
    required this.price,
  });
}

class ItemBanner extends StatelessWidget {
  final Item item;

  const ItemBanner({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cartModel = Provider.of<CartModel>(context);

    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 5.0,
                        spreadRadius: 1.0),
                  ]),
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: Image.asset(
                item.imageURL,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    item.name,
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("Ksh",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white)),
                          Text(item.price.toString(),
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white)),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          cartModel.addItem(item);
                        },
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    PageController bannerController = PageController(
      initialPage: 1,
      viewportFraction: 0.85,
    );
    final banners = <Widget>[];

    for (var i = 0; i < items.length; i++) {
      banners.add(ItemBanner(
        item: items[i],
      ));
    }

    return Expanded(
      child: Container(
        width: screenWidth,
        height: screenWidth * 9 / 16,
        child: PageView(
            controller: bannerController,
            scrollDirection: Axis.horizontal,
            children: banners),
      ),
    );
  }
}
