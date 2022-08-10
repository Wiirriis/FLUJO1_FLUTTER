import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  double width = 0.0;
  double height = 0.0;
  String text = "";
  VoidCallback onPressed;
  bool gradient = false;
  int colorPrimary = 0xFFa7ff84;
  int colorSecondary = 0xFF1cbb78;
  int colorSolid = 0xff2cb2e4;
  double borderRadius = 10;
  double fontSize = 18.0;

  Button(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.height = 25,
      this.width = 50,
      this.gradient = false,
      this.colorPrimary = 0xFFa7ff84,
      this.colorSecondary = 0xFF1cbb78,
      this.colorSolid = 0xff2cb2e4,
      this.borderRadius = 10,
      this.fontSize = 18.0,
      });

  @override
  State createState() => _Button();
}

class _Button extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(widget.colorSolid),
      borderRadius: BorderRadius.circular(widget.borderRadius),
      child: InkWell(
        onTap: widget.onPressed,
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        child: Container(
            width: widget.width,
            height: widget.height,
            child: Center(
                child: Text(widget.text,
                    style: TextStyle(
                        fontSize: widget.fontSize,
                        fontFamily: 'Lato',
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                        )))),
      ),
    );
  }
}
