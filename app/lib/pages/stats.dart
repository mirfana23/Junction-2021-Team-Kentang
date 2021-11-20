import 'package:flutter/material.dart';

class Stats extends StatelessWidget{
  final String title = 'Stats';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar  : AppBar(title : Text(this.title)),
      body    : Center(child : Text('Hello' + this.title)),
    );
  }
}