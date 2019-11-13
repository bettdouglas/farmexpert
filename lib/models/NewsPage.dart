import 'package:farmexpert/models/News.dart';
import 'package:farmexpert/models/NewsWidget.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  final News news;

  const NewsPage({Key key, this.news}) : super(key: key);
  @override
  Widget build(BuildContext context) {
 

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('News',style: TextStyle(
          fontStyle: FontStyle.normal,
          fontFamily: 'Righteous',
          fontSize: 24),),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[] +
                  NewsList.newsList.map((f) {
                    return NewsTitle(news: f);
                  }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}

class NewsTitle extends StatelessWidget {
  final News news;
  const NewsTitle({
    Key key,
    this.news,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screeHeight = MediaQuery.of(context).size.height;
    var screeWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => NewsWidget(
                  news: news,
                )));
      },
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(image: AssetImage(news.imgSrc), fit: BoxFit.cover),
              ),
              height: screeHeight * 0.12,
              width: screeWidth * 0.4,
            ),
          ),
          Flexible(
            child: Container(
              height: screeHeight*0.12,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  child: Text(
                    news.newsBody,overflow: TextOverflow.fade, style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontFamily: 'Righteous',
                            fontSize: 14),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
