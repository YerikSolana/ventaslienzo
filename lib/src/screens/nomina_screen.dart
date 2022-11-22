// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//mis imports
import 'package:ventaslienzo/src/screens/screens.dart';
import 'package:ventaslienzo/src/services/services.dart';
import 'package:ventaslienzo/src/widgets/widgets.dart';

class NominaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final empleadosService = Provider.of<EmpleadosService>(context);

    if (empleadosService.isLoading) return const LoadingScreen();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nomina'),
      ),
      body: ListView.builder(
        itemCount: empleadosService.empleados.length,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () {
            final route =
                MaterialPageRoute(builder: (context) => EmpleadosScreen());

            Navigator.push(context, route);
          },
          child: ProductCard(
            empleados: empleadosService.empleados[index],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {},
      ),
    );
  }
}
