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
    icon: Icons.refresh_rounded,
  ),
];