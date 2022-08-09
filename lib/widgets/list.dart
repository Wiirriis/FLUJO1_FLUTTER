import 'package:flutter/material.dart';
import 'dart:developer';

class ItemList {
  String title = 'Titulo';
  String subtitle = 'Subtitulo';
  final icon;

  ItemList(this.title, this.icon, [ this.subtitle = 'subtitle']);
}

class ActionList extends StatelessWidget {
  List itemsList;

  ActionList(this.itemsList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(0),
        itemCount: itemsList.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {},
            child: ListTile(
              leading: Container(
                width: 48,
                height: 48,
                margin: EdgeInsets.only(right: 0),
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                alignment: Alignment.center,
                child: Icon(itemsList[index].icon, color: Color(0xff7CBA37), size: 30.0),
              ),
              title: Text(
                itemsList[index].title,
                style: TextStyle(fontSize: 18, color: Color(0xff929191)),
              ),
              subtitle: itemsList[index].subtitle != 'subtitle'
                  ? Text(itemsList[index].subtitle,
                      style: TextStyle(fontSize: 14, color: Color(0xffb3d986)))
                  : null,
              dense: false,
            ),
          );
        });
  }
}

/* 
    List<dynamic> itemsList = [
      {
        'title': 'titulo',
        'subtitle': 'subtitle'
      }
    ]; 
    */

