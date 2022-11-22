import 'package:flutter/material.dart';

//mis imports
import 'package:ventaslienzo/src/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: Center(
        child: ListView.separated(
          itemBuilder: (context, i) => ListTile(
            title: Text(
              menuOptions[i].name,
              style: const TextStyle(fontSize: 25),
            ),
            leading: Icon(
              menuOptions[i].icon,
              color: Colors.green,
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
              color: Colors.green,
            ),
            onTap: () {
              Navigator.pushNamed(context, menuOptions[i].route);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length,
        ),
      ),
    );
  }
}
