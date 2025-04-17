import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });

}

const appMenuItems = <MenuItems>[
  
  MenuItems(
    title: 'botones',
    subtitle: 'varios botones de flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Tarjetas',
    subtitle: 'un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItems(
    title: 'ProgressIndicators',
    subtitle: 'Genera un indicador de progreso',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItems(
    title: 'SnackBars y dialogos',
    subtitle: 'indicadores de pantalla',
    link: '/snackbars',
    icon: Icons.info_outline_rounded,
  ),
  MenuItems(
    title: 'AnimatedContainer',
    subtitle: 'StateFulWidget con animaciones',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded,
  ),
  MenuItems(
    title: 'Ui Controls + Tiles',
    subtitle: 'una serie de controles de flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),
  MenuItems(
    title: 'introduccion a la aplicacion',
    subtitle: 'pequeño tutorial introductorio',
    link: '/tutorial',
    icon: Icons.accessibility_rounded,
  ),
  MenuItems(
    title: 'Scroll infinito',
    subtitle: 'scroll infinito con flutter',
    
    link: '/infinitescroll',
    icon: Icons.list_alt_rounded,
  ),
  MenuItems(
    title: 'Riverpod Contador',
    subtitle: 'introduccion a riverpod',
    link: '/counter_screen',
    icon: Icons.add,
  ),

];