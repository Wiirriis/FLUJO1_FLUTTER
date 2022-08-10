import 'package:flutter/material.dart';
import 'package:agricontrol_plus/widgets/list.dart';

class mainDrawer extends StatelessWidget {
  mainDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    List<ItemList> itemsList = [
      ItemList('Sincronizar', Icons.sync, 'Ultima sincronizacion 27/07/2007'),
      ItemList('Acerca del proyecto', Icons.info_outline),
      ItemList('Productores', Icons.groups),
      ItemList('Eventos', Icons.event),
      ItemList('Estadisticas', Icons.bar_chart),
      ItemList('Listado de cambios', Icons.list),
      ItemList('Actualizar catalogos', Icons.phonelink),
      ItemList('Exportar base de datos', Icons.cloud_sync)
    ];

    return Drawer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            height: 100,
            color: const Color(0xff7CBA37),
            child: const Center(
              child: Text(
                'Hola, Benito Antonio',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            )),
        Expanded(child: ActionList(itemsList)),
        Container(
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 24, bottom: 24, top: 16),
            child: Material(
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                  onTap: () {},
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(4),
                    child: Text(
                      'Cerrar sesion',
                      style: TextStyle(
                        color: Color(0xff3f4e71),
                        fontSize: 14,
                      ),
                    ),
                  )),
            )),
      ],
    ));
  }
}
