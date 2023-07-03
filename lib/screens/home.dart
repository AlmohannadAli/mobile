import 'package:flutter/material.dart';

import 'components/app_drawer.dart';
import 'components/body.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('قـــائـــمــتــي'),
        actions: [
         PopupMenuButton(
           icon: Icon(
             Icons.more_vert,
           ),
            itemBuilder: (_)=> [
              PopupMenuItem(
                child: Text('المهمات المنجزة'),
              ),
              PopupMenuItem(
                child: Text('حميع المهمات'),
              )
            ],
         )
       ],
     ),
     body: Body(),
     drawer: AppDrawer(),
    );
  }
}
