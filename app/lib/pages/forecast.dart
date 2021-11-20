import 'package:app/core/topbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Forecast extends StatelessWidget {
  const Forecast({Key? key}) : super(key: key);
  final String title = 'Forecast';
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: topbar("lol"),
      child: ListView(
        children: [
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 12),
                  padding: EdgeInsets.only(bottom: 8),
                  child: Image.asset(
                    'images/save_money.png',
                    width: 200,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 4),
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text(
                        'Save your money',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 4),
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text(
                        'IDR5000',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          //second card
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 12),
                  padding: EdgeInsets.only(bottom: 8),
                  child: Image.asset(
                    'images/total_money.png',
                    width: 200,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 4),
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text(
                        'Your water spending is ',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 4),
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text(
                        '50% ',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 4),
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text(
                        'of your total spending ',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          //Card no 3
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 12),
                  padding: EdgeInsets.only(bottom: 8),
                  child: Image.asset(
                    'images/water_money_value.png',
                    width: 200,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 12),
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text(
                        'Total money spent for water',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 4),
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text(
                        'IDR10.000',
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
