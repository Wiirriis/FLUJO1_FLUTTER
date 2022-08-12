import 'package:agricontrol_plus/widgets/expansionCard.dart';
import 'package:flutter/material.dart';
import 'package:agricontrol_plus/main/widgets/imageHeader.dart';
import 'package:agricontrol_plus/widgets/actionCard.dart';

class ProducerInformation extends StatelessWidget {
  const ProducerInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pathImage = 'assets/img/avatar1.jpg';

    return Scaffold(
      body: ListView(children: <Widget>[
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
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(24),
          child: ActionCard(),
        ),
        /* Container(
          child: ExpansionCard(
            headerWidget: Container(
                  margin: EdgeInsets.only(top: 16, bottom: 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[

                      
                      Container(
                        margin: EdgeInsets.only(right: 12),
     
     
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset('assets/img/avatar1.jpg',
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
                ),
          ),
        ) */
        Container(
          margin: EdgeInsets.only(left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    shadowColor: Colors.black,
                    elevation: 5,
                    margin: EdgeInsets.all(4),
                    child: Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 16),
                      child: Column(children: <Widget>[
                        Icon(Icons.person_add,
                            color: Color(0xff74c686), size: 50),
                        Text('Agregar\nproductor',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'Lato',
                              color: Color(0xff537d99),
                            ))
                      ]),
                    )),
              ),
              Expanded(
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    shadowColor: Colors.black,
                    elevation: 5,
                    child: Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 16),
                      child: Column(children: <Widget>[
                        Icon(Icons.group, color: Color(0xff74c686), size: 50),
                        Text('Personas\ninvolucradas',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'Lato',
                              color: Color(0xff537d99),
                            ))
                      ]),
                    )),
              ),
              Expanded(
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    shadowColor: Colors.black,
                    elevation: 5,
                    child: Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 16),
                      child: Column(children: <Widget>[
                        Icon(Icons.calendar_month,
                            color: Color(0xff74c686), size: 50),
                        Text('Monitoreo\nambiental',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'Lato',
                              color: Color(0xff537d99),
                            ))
                      ]),
                    )),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(24),
          child: Card(
            child: Material(
              child: InkWell(
                  child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    child: Icon(Icons.device_unknown,
                        color: Color(0xff74c686), size: 40),
                  ),
                  Text('Registrar asistencia tecnica',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Lato',
                          color: Color(0xff88c43b),
                          fontWeight: FontWeight.bold))
                ],
              )),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(24),
          child: Card(
              elevation: 1,
              child: 
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                children: <Widget>[
                  Align(
                    child: Text('Asociaciones a las que pertenece',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Lato',
                            color: Color(0xff88c43b),
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8, bottom: 8),
                    child: Row(children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 12),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(pathImage,
                              height: 50, scale: 1, fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 12),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(pathImage,
                              height: 50, scale: 1, fit: BoxFit.cover),
                        ),
                      ),
                    ]),
                  )
                ],
              ),
                )
              ),
        )
      ]),
    );
  }
}
