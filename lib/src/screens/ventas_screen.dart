import 'package:flutter/material.dart';

class VentasScreen extends StatelessWidget {
  const VentasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ventas'),
      ),
      body: const Center(
        child: Text('VentasScreen'),
      ),
    );
  }
}
