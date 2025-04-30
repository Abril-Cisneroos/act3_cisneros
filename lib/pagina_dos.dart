import 'package:flutter/material.dart';

class PaginaDos extends StatelessWidget {
  const PaginaDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Pantalla dos")),
        backgroundColor: Color(0xff9fa8f4),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          // --- Contenedor con el Stack de botones (originalmente Widget003) ---
          Expanded(
            child: Center(
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SizedBox(
                    width: 200.0,
                    height: 100.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: null,
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                    height: 200.0,
                    child: AbsorbPointer(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade200,
                        ),
                        onPressed: () {},
                        child: null,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

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
