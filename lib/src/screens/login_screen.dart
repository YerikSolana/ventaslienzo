// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ventaslienzo/src/providers/login_form_provider.dart';

//mis imports
import 'package:ventaslienzo/src/ui/input_decorations.dart';
import 'package:ventaslienzo/src/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 250),
              CardContainer(
                child: Column(
                  children: [
                    Text(
                      '¡Bienvenido!',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Inicia sesión',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const SizedBox(height: 10),

                    /**
                    Verificación del cambio de estado
                    del fromulario de inicio de sesión
                    */
                    ChangeNotifierProvider(
                      create: (_) => LoginFormProvider(),
                      child: _LoginForm(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 140),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //variable apuntando hacia el proveedor del formulario
    final loginForm = Provider.of<LoginFormProvider>(context);

    return Form(
      // ignore: todo
      //TODO: mantener la referencia al KEY

      //llave y normas de validación del formulario
      key: loginForm.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,

      child: Column(
        children: [
          //Campo de texto - correo
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
              hintText: 'correo.ejemplo@gmail.com',
              labelText: 'Correo',
              prefixIcon: Icons.alternate_email_rounded,
            ),

            //validación de correo
            onChanged: (value) => loginForm.email = value,
            validator: (value) {
              String pattern =
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              RegExp regExp = RegExp(pattern);

              return regExp.hasMatch(value ?? '')
                  ? null
                  : 'El valor ingresado no luce como un correo';
            },
          ),

          //
          const SizedBox(height: 20),

          //Campo de texto - contraseña
          TextFormField(
            autocorrect: false,
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
              hintText: '******',
              labelText: 'Contraseña',
              prefixIcon: Icons.lock_outline,
            ),

            //validación de contraseña
            onChanged: (value) => loginForm.password = value,
            validator: (value) {
              if (value != null && value.length >= 6) return null;
              return 'La contraseña debe ser de 6 caracteres mínimo';
            },
          ),

          //
          const SizedBox(height: 20),

          //Boton de inicio de sesion
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            disabledColor: Colors.grey,
            elevation: 7,
            color: Colors.green,
            onPressed: loginForm.isLoading
                ? null
                : () async {
                    FocusScope.of(context).unfocus();

                    if (!loginForm.isValidForm()) return;
                    loginForm.isLoading = true;
                    await Future.delayed(const Duration(seconds: 2));

                    // ignore: todo
                    //TODO: validar si el login es correcto
                    loginForm.isLoading = false;

                    // ignore: use_build_context_synchronously
                    Navigator.pushReplacementNamed(context, '/home');
                  },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              child: Text(
                loginForm.isLoading ? 'Espere...' : 'Ingresar',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
