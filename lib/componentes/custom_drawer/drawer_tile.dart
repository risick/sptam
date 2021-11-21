import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/models/page_manager.dart';

class Drawer_tile extends StatelessWidget{

  const Drawer_tile(this.iconData, this.title, this.page);
  final IconData iconData;
  final String title;
  final int page;

  @override
  Widget build(BuildContext context) {
    final int curPage = context.watch<PageManager>().page;
    return InkWell(
      onTap: (){
 //       debugPrint('Toquei $page',)
        context.read<PageManager>().setPage(page);
      },
      child: SizedBox(
        height: 80,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Icon(iconData,
                size: 32,
                //color: Colors.grey,
                color: curPage == page ? Colors.red : Colors.grey[700],
              ),
            ),
            const SizedBox(width: 32,),
            Text(
              title,
              style:TextStyle(
                  fontSize: 16,
                  //color:Colors.grey
                  color: curPage == page ? Colors.red : Colors.grey[700]

              ) ,
            ),

          ],


        ),
      ),
    );
  }
}