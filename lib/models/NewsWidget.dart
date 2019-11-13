import 'package:farmexpert/models/News.dart';
import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  final News news;

  const NewsWidget({Key key, this.news}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text(
                    news.newsTitle,
                    style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontFamily: 'Righteous',
                            fontSize: 24),
                  ),
                ),
              ),
              ClipRRect(
                child: Image.asset(
                  news.imgSrc,
                  height: screenHeight * 0.4,
                  width: screenWidth,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text(
                    news.newsBody,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
