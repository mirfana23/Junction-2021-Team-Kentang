import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/stats.dart';
import './pages/forecast.dart';

void main() => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home  : Home(),
    );
  }
}