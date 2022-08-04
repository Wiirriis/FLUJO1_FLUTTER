import 'package:agricontrol_plus/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:agricontrol_plus/widgets/imageCard.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageLogo = Center(
      child: ImageCard('assets/img/agricontrol_logo.png', 225, 300),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        top: 32,
        bottom: 32,
      ),
      child: Center(
        child: Text('Benito Antonio Martinez',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 22.0,
                fontFamily: 'Lato',
                color: Color(0xff21355c),
                fontWeight: FontWeight.bold)),
      ),
    );

    final textFieldPassword = Container(
        margin: EdgeInsets.only(top: 16, left: 64, right: 64, bottom: 16),
        child: TextField(
          decoration: InputDecoration(
              suffixIcon: Icon(Icons.visibility, color: Color(0xffbbbfc5)),
              filled: true,
              fillColor: Color(0xffecf1f7),
              border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                width: 0, 
                style: BorderStyle.none,
            ),
      ),),
        ));

    final controlsLogin = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InkWell(
            onTap: () {},
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.all(4),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          right: 8,
                        ),
                        child:
                            Icon(Icons.fingerprint, color: Color(0xffbbbfc5)),
                      ),
                      Text(
                        'Huella',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xffbbbfc5)),
                      )
                    ],
                  ),
                ],
              ),
            )),
        Container(
          color: Color(0xffbbbfc5),
          height: 25,
          width: 2,
          margin: EdgeInsets.only(top: 2, bottom: 2, right: 16, left: 16),
        ),
        InkWell(
            onTap: () {},
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.all(4),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          right: 8,
                        ),
                        child: Icon(Icons.face, color: Color(0xffbbbfc5)),
                      ),
                      Text(
                        'Reconocimiento facial',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xffbbbfc5)),
                      )
                    ],
                  ),
                ],
              ),
            )),
      ],
    );

    final loginButton = Container(
      margin: EdgeInsets.only(
        top: 32,
        bottom: 16
      ),
      child: Button(
      text: 'Ingresar', 
      onPressed: (){},
      height: 50,
      width: 200,
      ),
    );

    return Column(
      children: <Widget>[imageLogo, userName, textFieldPassword, controlsLogin, loginButton],
    );
  }
}
