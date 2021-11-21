import 'package:flutter/material.dart';
import 'package:untitled/componentes/custom_drawer/drawer_tile.dart';

class CustomDrawer extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Drawer_tile(
            Icons.money,
            'Pagamentos',
            0,),
          Drawer_tile(
            Icons.graphic_eq_sharp,
            'Relatorios',
            1,),
        ],
      ),

    );
  }
}