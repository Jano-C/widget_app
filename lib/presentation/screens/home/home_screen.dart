import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/config/menu/menu_items.dart';
import 'package:widget_app/presentation/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();



    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter + Material 3 Widgets'),
      ),
      body: const _HomeView(),
      drawer:  SideMenu(scaffoldKey: scaffoldKey,)
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
       itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return _CustomLitsTile(menuItem: menuItem);
        
      });
  }
}

class _CustomLitsTile extends StatelessWidget {
  final MenuItems menuItem;
  const _CustomLitsTile({
    required this.menuItem,
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    return ListTile(
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subtitle),
      leading: Icon(menuItem.icon, color: colors.primary),
      onTap: () {
           context.push(menuItem.link);
          },
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
          
    );
  }
}