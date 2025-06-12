

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {

  final GlobalKey<ScaffoldState>? scaffoldKey;

  const SideMenu({super.key, this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  int navDrawerindex = 1;
  @override
  Widget build(BuildContext context) {

    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;


    return   NavigationDrawer(
        onDestinationSelected:(value) {
          setState(() {
            navDrawerindex = value;
          });

          final menuItem = appMenuItems[value];
          context.push(menuItem.link);
          widget.scaffoldKey?.currentState?.closeDrawer();
        },
        selectedIndex: navDrawerindex,
        children: [

          Padding(
            padding:  EdgeInsets.fromLTRB(28,  hasNotch ? 0 : 20 , 16, 10),
            child: Text('Main'),
            ),


          ...appMenuItems
          .sublist(0,3)
          .map((item) =>  NavigationDrawerDestination(
            icon: Icon(item.icon),
            label: Text(item.title),

          
          ),


          ),
          Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
            child: Divider()),

          ...appMenuItems
          .sublist(3)
          .map((item) =>  NavigationDrawerDestination(
            icon: Icon(item.icon),
            label: Text(item.title),

          
          ),)

            
        ]
        

    );
  }
}