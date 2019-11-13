import 'package:farmexpert/Tabs/Tab2Pages/CapitalManagement.dart';
import 'package:farmexpert/Tabs/Tab2Pages/CropSelection.dart';
import 'package:farmexpert/Tabs/Tab2Pages/Production.dart';
import 'package:farmexpert/Tabs/Tab2Pages/ProfitCulculator.dart';
import 'package:farmexpert/Tabs/Tab2Pages/SeasonForecast.dart';
import 'package:flutter/material.dart';

class Tab2 extends StatefulWidget {
  @override
  _Tab2State createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        height: screenHeight,
        width: screenWidth,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Text(
                'Manage Your farm',
                style: TextStyle(fontSize: 18),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Production()));
                },
                child: Hero(
                  tag: 'ProductionHero',
                  child: Container(
                    child: Icon(
                      Icons.account_circle,
                      size: screenHeight * 0.15,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),
              Text('Production'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CropSelection()));
                    },
                    child: Hero(
                      tag: 'CropSelectionHero',
                      child: Container(
                        width: screenWidth * 0.45,
                        child: Icon(
                          Icons.bookmark,
                          size: screenHeight * 0.15,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ProfitCulculator()));
                    },
                    child: Hero(
                      tag: 'ProfitCulculatorHero',
                      child: Container(
                        width: screenWidth * 0.45,
                        child: Icon(
                          Icons.attach_money,
                          size: screenHeight * 0.15,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('Crop Selection'),
                  Text('Profit Culculator'),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SeasonForecast()));
                    },
                    child: Hero(
                      tag: 'CapitalManagementHero',
                      child: Container(
                        width: screenWidth * 0.45,
                        child: Icon(
                          Icons.alarm_on,
                          size: screenHeight * 0.15,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CapitalManagement()));
                    },
                    child: Container(
                      width: screenWidth * 0.45,
                      child: Icon(
                        Icons.lightbulb_outline,
                        size: screenHeight * 0.15,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('Season Forecast'),
                  Text('Capital Management'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
