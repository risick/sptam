import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Drawer_tile extends StatelessWidget{

  const Drawer_tile(this.iconData, this.title, this.page);
  final IconData iconData;
  final String title;
  final int page;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        debugPrint('Toquei $page',);
      },
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Icon(iconData,
                size: 32,
                color: Colors.grey,
              ),
            ),
            const SizedBox(width: 32,),
            Text(
              title,
              style:TextStyle(
                  fontSize: 16,
                  color:Colors.grey
              ) ,
            ),

          ],


        ),
      ),
    );
  }
}