import 'package:flutter/material.dart';

class Pantallacuatro extends StatefulWidget {
  const Pantallacuatro({Key? key}) : super(key: key);

  @override
  State<Pantallacuatro> createState() => _PantallacuatroState();
}

class _PantallacuatroState extends State<Pantallacuatro> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text("Pantalla cuatro")), // Corregido a "Pantalla cinco"
        backgroundColor: const Color(0xff9fa8f4),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            width: selected ? 200.0 : 100.0,
            height: selected ? 100.0 : 200.0,
            color: selected ? Colors.blueGrey : Colors.white,
            alignment:
                selected ? Alignment.center : AlignmentDirectional.topCenter,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 75),
          ),
        ),
      ),
    );
  }
}
