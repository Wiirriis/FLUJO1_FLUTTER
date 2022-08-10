import 'package:flutter/material.dart';
import 'package:agricontrol_plus/widgets/button.dart';

class ActionCard extends StatelessWidget {
  String pathImage = 'assets/img/avatar1.jpg';

  ActionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Color(0xffdbedc4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(children: <Widget>[
            Stack(
              children: <Widget>[
                Positioned(
                    top: -16,
                    right: -12,
                    child: IconButton(
                        iconSize: 40,
                        padding: EdgeInsets.all(0),
                        splashRadius: 15,
                        icon: Icon(Icons.expand_more, color: Color(0xff88c43b)),
                        onPressed: () {})),
                Container(
                  margin: EdgeInsets.only(top: 16, bottom: 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 12),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(pathImage,
                              height: 50, scale: 1, fit: BoxFit.cover),
                        ),
                      ),
                      const Text(
                        'Benito Antonio Martinez',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Lato',
                            color: Color(0xff21355c),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                const Text(
                  'DPI: ',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                      color: Color(0xff21355c),
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  '3254 85950 2201',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Lato',
                    color: Color(0xff21355c),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 8, bottom: 24),
              child: Row(
                children: <Widget>[
                  const Text(
                    'Fecha de nacimiento: ',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Lato',
                        color: Color(0xff21355c),
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    '09/08/2022',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                      color: Color(0xff21355c),
                    ),
                  ),
                ],
              ),
            ),
            Button(
              text: 'CONTACTO',
              onPressed: () {},
              height: 45,
              width: 350,
              borderRadius: 50,
              fontSize: 16,
              colorSolid: 0xff88c43b,
            )
          ]),
        ));
  }
}
