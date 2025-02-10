import 'package:flutter/material.dart';
import 'package:widget_app/config/menu/menu_items.dart';
import 'package:widget_app/presentation/screens/buttons/buttons_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Screen'),
      ),
      body: const _HomeView(),
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
           Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ButtonsScreen(),
              ));
          },
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
          
    );
  }
}