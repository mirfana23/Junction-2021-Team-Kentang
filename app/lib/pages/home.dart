import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({Key? key}) : super(key: key);
  final String title = 'Home';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar : AppBar(title : Text(this.title)),
      body   : Center(child : Text('Hello' + this.title)),
    );
  }
}