import 'package:flutter/material.dart';
import 'package:agricontrol_plus/main/widgets/imageHeader.dart';
import 'package:agricontrol_plus/widgets/actionCard.dart';

class ProducerInformation extends StatelessWidget {
  const ProducerInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        ImageHeader(),
        Container(
          margin: EdgeInsets.all(24),
          alignment: Alignment.centerLeft,
          child: Text(
          'Informacion general del productor',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Lato',
            color: Color(0xff21355c),
            fontWeight: FontWeight.bold
          ),
        ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(24),
          child: ActionCard(),
        )
      ]),
    );
  }
}