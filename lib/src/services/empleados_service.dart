import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//mis imports
import 'package:ventaslienzo/src/models/models.dart';

//
class EmpleadosService extends ChangeNotifier {
  final String _baseUrl = 'ventaslienzo-b3bc0-default-rtdb.firebaseio.com';
  final List<Empleados> empleados = [];
  bool isLoading = true;

  EmpleadosService() {
    loadEmpleados();
  }

  Future<List<Empleados>> loadEmpleados() async {
    isLoading = true;
    notifyListeners();

    final url = Uri.https(_baseUrl, 'empleados.json');
    final answer = await http.get(url);

    final Map<String, dynamic> empleadosMap = json.decode(answer.body);

    empleadosMap.forEach((key, value) {
      final tempEmpleado = Empleados.fromMap(value);
      tempEmpleado.id = key;
      empleados.add(tempEmpleado);
    });

    isLoading = false;
    notifyListeners();

    return empleados;
  }
}
