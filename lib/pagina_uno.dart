import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Pantalla uno")), // Título centrado
        backgroundColor: Color(0xff75a8fe), // Color de la barra
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: const Text('ver pantalla 2'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Pantalla tres');
              },
              child: const Text('ver pantalla 3'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Pantalla cuatro ');
              },
              child: const Text('Ver pantalla 4'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Pantalla cinco ');
              },
              child: const Text('Ver pantalla 5'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Pantalla seis ');
              },
              child: const Text('Ver pantalla 6'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Pantalla siete ');
              },
              child: const Text('Ver pantalla 7'),
            ),
          ),
        ],
      ),
    );
  }
}
