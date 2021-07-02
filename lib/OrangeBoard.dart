import 'package:flutter/material.dart';

class OrangeBoard extends StatelessWidget {
  Widget widget;
  double height, width,topRight,topLeft,opacity;
  Color color;


  OrangeBoard(
  {@required this.widget, @required this.height,
  @required this.width, @required this.topRight,
  @required this.topLeft, @required this.opacity,
  @required this.color});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Container(
        height: height,
        width: width,
        // color: Colors.orange,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(topRight),
              topLeft: Radius.circular(topLeft),
            ),
            color: color),
        child: widget,
      ),
    );
  }
}
