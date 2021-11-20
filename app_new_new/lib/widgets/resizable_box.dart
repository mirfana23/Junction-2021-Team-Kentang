import 'package:flutter/material.dart';

class ResizableBox extends StatelessWidget{
  const ResizableBox({
    Key ? key, 
    this.borderRadius, 
    this.color, 
    this.gradientStart,
    this.gradientEnd, 
    this.width,
    this.height,
    this.child
  }) : super(key : key);
  final double ? borderRadius; 
  final Color ? color;
  final Color ? gradientStart;
  final Color ? gradientEnd;
  final double ? height;
  final double ? width;
  final Widget ? child;
  @override
  Widget build(BuildContext context){    
    return Material(
      color : Colors.transparent, 
      child : InkWell(
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
            gradient: LinearGradient(
              colors : [
                gradientStart ?? Color(0xff441DFC),
                gradientEnd ?? Color(0xff4E81EB)
              ],
              begin : Alignment.bottomLeft,
              end: Alignment.topRight
            ),
          ),
          child: SizedBox(
            width : width,
            height: height,
            child : child
          )
        )
      ),
    );
  }
}