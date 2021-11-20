import 'package:flutter/material.dart';

class Forecast extends StatelessWidget{
  final String title = 'Forecast';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar  : AppBar(title : Text(this.title)),
      body    : Center(child : Text('Hello' + this.title)),
    );
  }
}