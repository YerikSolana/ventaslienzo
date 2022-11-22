// ignore_for_file: prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class EmpleadosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vista'),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //
              SizedBox(height: 50),

              //
              Text('name'),
              //
              SizedBox(width: 10),

              //
              Text('apellidoP'),
              //
              SizedBox(width: 10),

              //
              Text('apellidoM'),
            ],
          ),
          Column(
            children: [
              ListTile(
                leading: Icon(Icons.mail),
                title: Text('mail'),
              ),

              //
              const Divider(),

              //
              ListTile(
                leading: Icon(Icons.work),
                title: Text('telefono'),
              ),

              //
              const Divider(),

              //
              ListTile(
                leading: Icon(Icons.mail),
                title: Text('mail'),
              ),

              //
              const Divider(),
            ],
          ),
        ],
      ),
    );
  }
}
