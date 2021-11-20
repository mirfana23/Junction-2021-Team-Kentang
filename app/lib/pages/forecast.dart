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
        navigationBar: CupertinoNavigationBar(
          middle: Text('Sample Code'),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 128),
              padding: EdgeInsets.only(bottom: 8),
              child: Image.asset(
                'images/save_money.png',
                width: 200,
                height: 100,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 128),
              padding: EdgeInsets.only(bottom: 8),
              child: Text(
                'Save your money',
              ),
            )
          ],
        ));
  }
}
