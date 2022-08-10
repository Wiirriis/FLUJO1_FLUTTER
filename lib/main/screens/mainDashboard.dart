import 'package:flutter/material.dart';
import 'package:agricontrol_plus/main/widgets/drawer.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class MainDashboard extends StatefulWidget {
  MainDashboard({Key? key}) : super(key: key);

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  String pathImageAgricontrol = 'assets/img/agricontrol_logo_small.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        body: Column(children: <Widget>[
          Stack(
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.menu, color: Colors.black),
                  onPressed: () {
                    _key.currentState?.openDrawer();
                  }),
              Container(
                height: 100,
                alignment: Alignment.topCenter,
                child: Image.asset(
                  pathImageAgricontrol,
                  height: 100,
                  scale: 1,
                ),
              )
            ],
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 24),
                child: Text('Hola, \nBenito Antonio Martinez Ocasio',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'Lato',
                        color: Color(0xff21355c),
                        fontWeight: FontWeight.bold)),
              )),
          Align(
            child: Container(
                margin:
                    EdgeInsets.only(top: 16, left: 24, right: 24, bottom: 16),
                child: Material(
                  elevation: 5,
                  shadowColor: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search, color: Color(0xffbbbfc5)),
                      filled: true,
                      fillColor: Color(0xffecf1f7),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                )),
          ),
          Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              shadowColor: Colors.black,
              elevation: 5,
              margin: EdgeInsets.only(top: 16, left: 24, right: 24, bottom: 16),
              child: Container(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(4),
                          child: Text('Productores asignados',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Lato',
                                  color: Color(0xff015c96),
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          child: Text('18',
                              style: TextStyle(
                                  fontSize: 48.0,
                                  fontFamily: 'Lato',
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffe9f7fc),
                          ),
                          padding: EdgeInsets.only(left: 8, right: 8),
                          child: Row(children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(4),
                              child: Icon(
                                Icons.watch_later,
                                color: Color(0xff2cb2e4),
                                size: 20,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(4),
                              child: Text('En proceso',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: 'Lato',
                                    color: Color(0xff2cb2e4),
                                  )),
                            )
                          ]),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              width: 10,
                              height: 10,
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xff74c686),
                              ),
                            ),
                            Text('Nuevos',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Lato',
                                  color: Color(0xff8691aa),
                                ))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              width: 10,
                              height: 10,
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xff2cb2e4),
                              ),
                            ),
                            Text('En proceso',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Lato',
                                  color: Color(0xff8691aa),
                                ))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              width: 10,
                              height: 10,
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xfff9b035),
                              ),
                            ),
                            Text('De baja',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Lato',
                                  color: Color(0xff8691aa),
                                ))
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),
          Row(
            children: <Widget>[
              Expanded(
                child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                shadowColor: Colors.black,
                elevation: 5,
                margin:
                    EdgeInsets.only(top: 16, left: 24, right: 16, bottom: 16),
                child: Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 16),
                  child: Column(children: <Widget>[
                  Icon(Icons.person_add, color: Color(0xff74c686), size: 50),
                  Text('Agregar\nproductor',
                        textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Lato',
                        color: Color(0xff537d99),
                      ))
                ]),
                )
              ),
              ),
              Expanded(
                child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                shadowColor: Colors.black,
                elevation: 5,
                margin:
                    EdgeInsets.only(top: 16, left: 16, right: 24, bottom: 16),
                child: Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 16),
                  child: Column(children: <Widget>[
                  Icon(Icons.group, color: Color(0xff74c686), size: 50),
                  Text('Ver\nproductor',
                        textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Lato',
                        color: Color(0xff537d99),
                      ))
                ]),
                )
              ),
              )
            ],
          )
        ]),
        drawer: mainDrawer());
  }
}

/* IconButton(
                        icon: Icon(Icons.menu, color: Colors.black),
                        onPressed: () {
                          _key.currentState?.openDrawer();
                        }), */
