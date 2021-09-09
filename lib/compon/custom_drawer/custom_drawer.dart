import 'package:flutter/material.dart';
import 'package:untitled/compon/custom_drawer/drawer_tile.dart';

class CustomDrawer extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // Container
          //   (
          //     color: Colors.orange,
          //     child: Column(
          //       children: [
          //         buildHeader(
          //           context,
          //           urlImage: urlImage,
          //           name: name,
          //           email: email,
          //         ),
          //
          //       ],
          //     )),
          Drawer_tile(Icons.money, 'Pagamentos',0,),
          Drawer_tile(Icons.graphic_eq_sharp, 'Enviar relatorio',1,),
        ],
      ),

    );
  }
}