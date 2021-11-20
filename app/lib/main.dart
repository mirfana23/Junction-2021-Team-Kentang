import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/stats.dart';
import './pages/forecast.dart';

void main() => runApp(App());

class App extends StatelessWidget{
  final String appTitle   = "Kentang App";
  final routing       = {
    '/'         : (context) => const Home(),
    '/stats'    : (context) => Stats(),
    '/forecast' : (context) => Forecast()
  };
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title         : this.appTitle, 
      initialRoute  : '/',
      routes        : this.routing
    );
  }
}