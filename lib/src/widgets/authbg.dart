// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          _GreenBox(),
          _IconoEncabezado(),
          child,
        ],
      ),
    );
  }
}

class _IconoEncabezado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 20),
        child: const Icon(
          Icons.person_pin,
          color: Colors.white,
          size: 170,
        ),
      ),
    );
  }
}

class _GreenBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      color: Colors.green,
      child: Stack(
        children: [
          Positioned(
            top: 80,
            left: 60,
            child: _Bubble(),
          ),
          Positioned(
            top: -40,
            left: -30,
            child: _Bubble(),
          ),
          Positioned(
            top: -50,
            right: 20,
            child: _Bubble(),
          ),
          Positioned(
            bottom: -10,
            left: -20,
            child: _Bubble(),
          ),
          Positioned(
            bottom: 90,
            right: -40,
            child: _Bubble(),
          ),
          Positioned(
            bottom: 20,
            right: 100,
            child: _Bubble(),
          ),
          // Positioned(
          //   bottom: 200,
          //   right: 150,
          //   child: _Bubble(),
          // ),
          // Positioned(
          //   top: 90,
          //   left: 30,
          //   child: _Bubble(),
          // ),
        ],
      ),
    );
  }
}

class _Bubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromARGB(255, 85, 180, 88),
      ),
    );
  }
}
