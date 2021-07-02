import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;


  TextFieldContainer({@required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: size.width * 0.9,
        decoration: BoxDecoration(
          color: Color(0xFFFFF1EB),
          borderRadius: BorderRadius.circular(29),
        ),
        child: child,
      ),
    );
  }
}
