import 'package:flutter/material.dart';

class Paginacuatro extends StatefulWidget {
  const Paginacuatro({Key? key}) : super(key: key);

  @override
  State<Paginacuatro> createState() => _PaginacuatroState();
}

class _PaginacuatroState extends State<Paginacuatro> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Pantalla cuatro")),
        backgroundColor: const Color(0xffeac2f2),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 100,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: const Text(
              'Switch',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          AnimatedCrossFade(
            firstChild: Image.asset(
              'assets/pagina5/wgato.jpg',
              width: double.infinity,
            ),
            secondChild: Image.asset(
              'assets/pagina5/wgato2.jpg',
              width: double.infinity,
            ),
            crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
          ),
          const SizedBox(height: 20), // Espacio adicional
          Center(
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ver pantalla 1'),
            ),
          ),
        ],
      ),
    );
  }
}
