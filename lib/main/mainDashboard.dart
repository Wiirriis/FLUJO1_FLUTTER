import 'package:flutter/material.dart';
import 'package:agricontrol_plus/widgets/drawer.dart';

class MainDashboard extends StatefulWidget {
  MainDashboard({Key? key}) : super(key: key);

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
        body: Stack(
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.menu, color: Colors.black),
                onPressed: (){
                      _key.currentState?.openDrawer();
                    })
          ],
        ),
        drawer: mainDrawer());
  }
}
