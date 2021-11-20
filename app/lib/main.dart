import 'package:flutter/material.dart';

//main pages
import './pages/home.dart';
import './pages/stats.dart';
import './pages/forecast.dart';

//navbar and topbar
import './core/navbar.dart';
import './core/topbar.dart';

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