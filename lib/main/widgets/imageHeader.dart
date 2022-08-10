import 'package:flutter/material.dart';

class ImageHeader extends StatelessWidget {
  String pathImage = 'assets/img/agricontrol_logo_small.jpg';
  double height = 100;
  ImageHeader(
      {Key? key,
      this.pathImage = 'assets/img/agricontrol_logo_small.jpg',
      this.height = 100});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      alignment: Alignment.topCenter,
      child: Image.asset(
        pathImage,
        height: height,
        scale: 1,
      ),
    );
  }
}
