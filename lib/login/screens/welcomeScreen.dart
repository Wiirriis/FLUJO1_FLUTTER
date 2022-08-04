import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  String pathImage = 'assets/img/feedthefuture.jpg';
  String pathImageUsaid = 'assets/img/usaid.jpg';
  String pathImagePopoyan = 'assets/img/popoyan.jpg';

  String welcomeTextString =
      'GUATEMALA \nPROYECTO DE SOLUCIONES \nINNOVADORAS PARA CADENAS\nDE VALOR AGRÍCOLA';

  WelcomeScreen({Key? key, this.pathImage = 'assets/img/feedthefuture.jpg'});

  @override
  Widget build(BuildContext context) {
    final imageHeader = Container(
      margin: EdgeInsets.only(top: 8, left: 16, bottom: 8),
      height: 50,
      width: 150,
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
        shape: BoxShape.rectangle,
      ),
    );

    final header = Container(
      color: Color(0xff2a85a6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [imageHeader],
      ),
    );

    final welcomeText = Expanded(
        child: Center(
      child: Text(welcomeTextString,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18.0,
            fontFamily: 'Lato',
            color: Color(0xff2a85a6),
          )),
    ));

    final footer = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 16, bottom: 8),
          height: 50,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(pathImageUsaid)),
            shape: BoxShape.rectangle,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 16, bottom: 8),
          height: 50,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(pathImagePopoyan)),
            shape: BoxShape.rectangle,
          ),
        )
      ],
    );

    return Container(
      margin: EdgeInsets.only(
        top: 24,
      ),
      child: Column(
        children: <Widget>[header, welcomeText, footer],
      ),
    );
  }
}
