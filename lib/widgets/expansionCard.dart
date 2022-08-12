import 'package:flutter/material.dart';

class ExpansionCard extends StatefulWidget {
  final Widget headerWidget;

  ExpansionCard({Key? key, required this.headerWidget}) : super(key: key);

  @override
  State<ExpansionCard> createState() => _ExpansionCardState();
}

class _ExpansionCardState extends State<ExpansionCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(24),
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: ExpansionPanelList(
              animationDuration: Duration(milliseconds: 300),
              children: [
                ExpansionPanel(
                  backgroundColor: Color(0xffdbedc4),
                  headerBuilder: (_, isExpanded) => Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      child: Text(
                        'HOLA',
                        style: TextStyle(fontSize: 20),
                      )),
                  body: ListTile(
                    title: Text('Description text',
                        style: TextStyle(color: Colors.black)),
                  ),
                  isExpanded: _expanded,
                  canTapOnHeader: true,
                ),
              ],
              dividerColor: Colors.grey,
              expansionCallback: (panelIndex, isExpanded) {
                _expanded = !_expanded;
                setState(() {});
              },
            )));
  }
}
