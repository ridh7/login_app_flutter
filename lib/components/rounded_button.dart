import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color color, textColor;
  final Function press;

  const RoundedButton({
    Key key,
    this.text,
    this.color,
    this.textColor,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        width: size.width * .8,
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(29),
        ),
      ),
    );
  }
}
