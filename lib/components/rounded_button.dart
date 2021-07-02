import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color btnColor, textColor;
  final double width;
  final double marginDouble;

  RoundedButton(
      {@required this.text,
      @required this.press,
      @required this.btnColor,
      @required this.textColor,
      @required this.width,
      @required this.marginDouble});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: marginDouble),
      width: size.width * width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(29), color: btnColor),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          //color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

/*
ElevatedButton(
            onPressed: press,
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                elevation: 5),
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
 */
