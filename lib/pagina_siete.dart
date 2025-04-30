import 'package:flutter/material.dart';

class PaginaSiete extends StatefulWidget {
  const PaginaSiete({super.key});

  @override
  State<PaginaSiete> createState() => PaginaSieteState();
}

class PaginaSieteState extends State<PaginaSiete> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Pantalla siete")),
        backgroundColor: const Color(0xff9fa8f4),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50),
              child: AnimatedRotation(
                turns: turns,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(
                  size: 100,
                ),
              ),
            ),
            ElevatedButton(
              child: const Text('Rotate Logo'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
                setState(() => turns += 1 / 4);
              },
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
      ),
    );
  }
}
