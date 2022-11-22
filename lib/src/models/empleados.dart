// To parse this JSON data, do
//
//     final empleados = empleadosFromMap(jsonString);

import 'dart:convert';

class Empleados {
  Empleados({
    required this.apellidoM,
    required this.available,
    required this.apellidoP,
    required this.mail,
    required this.name,
    required this.puesto,
    required this.telefono,
  });

  String apellidoM;
  String apellidoP;
  bool available;
  String mail;
  String name;
  String puesto;
  int telefono;
  String? id;

  factory Empleados.fromJson(String str) => Empleados.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Empleados.fromMap(Map<String, dynamic> json) => Empleados(
        apellidoM: json["apellidoM"],
        apellidoP: json["apellidoP"],
        available: json["available"],
        mail: json["mail"],
        name: json["name"],
        puesto: json["puesto"],
        telefono: json["telefono"],
      );

  Map<String, dynamic> toMap() => {
        "apellidoM": apellidoM,
        "apellidoP": apellidoP,
        "available": available,
        "mail": mail,
        "name": name,
        "puesto": puesto,
        "telefono": telefono,
      };
}
