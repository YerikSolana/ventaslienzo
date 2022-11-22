import 'package:flutter/material.dart';

//mis imports
import 'package:ventaslienzo/src/screens/screens.dart';
import 'package:ventaslienzo/src/models/models.dart';

class AppRoutes {
  static const initialRoute = '/nomina';

  static final menuOptions = <MenuOption>[
    // ignore: todo
    //TODO: borrar home
    MenuOption(
        route: '/nomina',
        name: 'Nomina',
        screen: NominaScreen(),
        icon: Icons.payments),
    MenuOption(
        route: '/inventario',
        name: 'Inventario',
        screen: const InventarioScreen(),
        icon: Icons.inventory),
    MenuOption(
        route: '/compras',
        name: 'Compras',
        screen: const ComprasScreen(),
        icon: Icons.shopping_bag),
    MenuOption(
        route: '/ventas',
        name: 'Ventas',
        screen: const VentasScreen(),
        icon: Icons.sell),
    MenuOption(
        route: '/registro',
        name: 'Registro',
        screen: const RegistroScreen(),
        icon: Icons.bar_chart),
    MenuOption(
        route: '/login',
        name: 'Cerrar sesión',
        screen: LoginScreen(),
        icon: Icons.logout),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Map<String, Widget Function(BuildContext)> routes = {
    '/login': (BuildContext context) => LoginScreen(),
    '/home': (BuildContext context) => const HomeScreen(),
    '/nomina': (BuildContext context) => NominaScreen(),
    '/inventario': (BuildContext context) => const InventarioScreen(),
    '/compras': (BuildContext context) => const ComprasScreen(),
    '/ventas': (BuildContext context) => const VentasScreen(),
    '/registro': (BuildContext context) => const RegistroScreen(),
    '/empleados': (BuildContext context) => EmpleadosScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}
